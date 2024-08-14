clear
close all

% Load neuronal PSY regressor and PPI regressor calculated by SPM PEB
load(fullfile(pwd,'deconvolution','examples','01_BLOCK_DESIGN_SF_[1.00]_SNR_[0.40]','Sub_1_ROI_1.mat'));

% Setup variables
TR = 2;                          % Time repetition, [s]
NT = 16;                         % Microtime resolution (number of time bins per scan)
dt = TR/NT;                      % Length of time bin, [s]
T0 = 8;                          % Microtime onset (reference time bin, see slice timing)
N = length(preproc_BOLD_signal); % Scan duration, [dynamics] 
k = 1:NT:N*NT;                   % microtime to scan time indices

% % Uncomment to load HCP Working Memory task example
% % Load neuronal PSY regressor and PPI regressor calculated by SPM PEB
% load(fullfile(pwd,'deconvolution','examples','03_BLOCK_DESIGN_HCP_WM','Sub_01_ROI_01.mat'));
% % Setup variables
% TR = 0.72;                       % Time repetition, [s]
% NT = 16;                         % Microtime resolution (number of time bins per scan)
% dt = TR/NT;                      % Length of time bin, [s]
% T0 = 8;                          % Microtime onset (reference time bin, see slice timing)
% N = length(preproc_BOLD_signal); % Scan duration, [dynamics] 
% k = 1:NT:N*NT;                   % microtime to scan time indices

%% Create SPM HRF in microtime resolution
t = 0:dt:32;
hrf = gampdf(t,6) - gampdf(t,NT)/6;
hrf = hrf'/sum(hrf);

%% Create convolved discrete cosine set
M = N*NT + 128;
n = (0:(M -1))';
xb = zeros(size(n,1),N);
xb(:,1) = ones(size(n,1),1)/sqrt(M);
for j=2:N
    xb(:,j) = sqrt(2/M)*cos(pi*(2*n+1)*(j-1)/(2*M));
end

Hxb = zeros(N,N);
for i = 1:N
    Hx       = conv(xb(:,i),hrf);
    Hxb(:,i) = Hx(k + 128);
end
xb = xb(129:end,:);

%% Dependency on regularization parameter, alpha (aka lambda)
r = [];
Y = preproc_BOLD_signal;
X = Hxb;
alpha = [0.0001:0.0001:0.01];
for i = 1:length(alpha)
    C = (X'*X + alpha(i)*eye(length(X)))\(X'*Y);
    xn = xb*C;
    r(i) = corr(xn,spm_phys_neuro);
end
figure(1)
plot(alpha,r);
xlabel('Regularization parameter, alpha'); 
ylabel('Correlation between SPM PEB and ridge regression');
grid on

%% Perform ridge regression with best alpha
alpha = 0.005;
C = (X'*X + alpha*eye(length(X)))\(X'*Y);

% Recover neuronal signal
xn = xb*C;

%% Plot neuronal signal recovered by SPM PEB and ridge regression
figure(2)
plot(xn); hold on; plot(spm_phys_neuro);
legend(['Ridge regression, alpha = ' num2str(alpha)],'SPM PEB');
title('Recovered neuronal signal');
fprintf(['Correlation between neuronal signals recovered by SPM PEB and ridge regression, r = ' num2str(corr(xn,spm_phys_neuro)) '\n']);

%% Calculate PPI
xn = detrend(xn);
PSY = detrend(psy_neuro);
PSYxn = PSY.*xn;
ppi = conv(PSYxn,hrf);
ppi = ppi((k-1) + T0);
figure(3)
plot(ppi); hold on; plot(spm_ppi); 
legend(['Ridge regression, alpha = ' num2str(alpha)],'SPM PEB');
title('PPI regressors');
fprintf(['Correlation between PPI terms calculated by SPM PEB and ridge regression, r = ' num2str(corr(ppi,spm_ppi)) '\n']);

%% =====================[MATLAB function usage]============================

%% Use bold_deconvolution.m function for deconvolution (single ROI)
neuro = bold_deconvolution(preproc_BOLD_signal,TR,alpha,NT);

%% Use bold_deconvolution.m function for deconvolution (multiple ROIs)

% Assume we have 400 ROIs 
BOLD = repmat(preproc_BOLD_signal,1,400);  

% Use parallel computations 
par = 1;                         
neuro_ts = bold_deconvolution(BOLD,TR,alpha,NT,par);
