# Task designs

Task design *.mat file is used as an input for TMFC simulations using Python code. 

The output of the Python code is simulated BOLD time series *.mat file. 

Task design and simulated BOLD time series *.mat files are used as input for TMFC analysis using MATLAB code. 

## "Task design" data structures

* **durations{1,i}** - durations of blocks/events for i-th condition
* **names{1,i}** - name for i-th condition
* **onsets{1,i}** - stimulus onset times for i-th condition
* **rest_matrix{1,1}** - weighting factors [k x k] for the construction of synaptic weight matrices (k - number of functional modules in the network) 
* **task_matrices{1,i}** - weighting factors [k x k] for the construction of synaptic weight matrices for i-th condition (k - number of functional modules in the network) 
* **activations{1,i}** - indicate which functional modules are activated during i-th condition (activations are modelled by simple box-car functions)
  * for example, consider 4 functonal modules, modules 1 & 3 activated during Cond№1, modules 2 & 4 activated during Cond№2
  * activations{1,1} = [1 0 1 0]
  * activations{1,2} = [0 1 0 1]
 
**Onsets**, **durations** and **condition names** are defined in the same way as for **multiple conditions** *.mat file for SPM12.

## Experiments:

* [01_BLOCK [2s_TR] [20s_DUR] [10_BLOCKS]](/task_designs/files/01_BLOCK_[2s_TR]_[20s_DUR]_[10_BLOCKS].mat)
   * Block design
   * Repetition time (TR) = 2 s
   * Block duration = 20 s
   * 10 blocks per condition
   * Block sequence: [Cond_A, Rest, Cond_B, Rest, Cond_B, ... ]
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 13.3 min

* [02_EVENT [2s_TR] [1s_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/02_EVENT_[2s_TR]_[1s_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Default event-related design
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 23.6 min
     
* [03_EVENT [500ms_TR] [1s_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/03_EVENT_[500ms_TR]_[1s_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 500 ms
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 14 time points (7 s)
   * Total scan time = 23.6 min
     
* [04_EVENT [700ms_TR] [1s_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/04_EVENT_[700ms_TR]_[1s_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 700 ms
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 10 time points (7 s)
   * Total scan time = 23.6 min

* [05_EVENT [1s_TR] [1s_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/05_EVENT_[1s_TR]_[1s_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 1 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 6 time points (6 s)
   * Total scan time = 23.6 min

* [06_EVENT [3s_TR] [1s_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/06_EVENT_[3s_TR]_[1s_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 3 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (9 s)
   * Total scan time = 23.6 min
 
* [07_EVENT [2s_TR] [100ms_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/07_EVENT_[2s_TR]_[100ms_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 100 ms
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 20.6 min
 
* [08_EVENT [2s_TR] [250ms_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/08_EVENT_[2s_TR]_[250ms_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 250 ms
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 21.1 min
 
* [09_EVENT [2s_TR] [500ms_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/09_EVENT_[2s_TR]_[500ms_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 500 ms
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 22 min
 
* [10_EVENT [2s_TR] [2s_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/10_EVENT_[2s_TR]_[2s_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 2 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 27 min
 
* [11_EVENT [2s_TR] [4s_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/11_EVENT_[2s_TR]_[4s_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 4 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 33.8 min
 
* [12_EVENT [2s_TR] [1s_DUR] [2s_ISI] [100_TRIALS]](/task_designs/files/12_EVENT_[2s_TR]_[1s_DUR]_[2s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 1-3 s (mean ISI = 2 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 10.4 min
 
* [13_EVENT [2s_TR] [1s_DUR] [4s_ISI] [100_TRIALS]](/task_designs/files/13_EVENT_[2s_TR]_[1s_DUR]_[4s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 2-6 s (mean ISI = 4 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 17 min
 
* [14_EVENT [2s_TR] [1s_DUR] [8s_ISI] [100_TRIALS]](/task_designs/files/14_EVENT_[2s_TR]_[1s_DUR]_[8s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 6-10 s (mean ISI = 8 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 30.4 min
 
* [15_EVENT [2s_TR] [1s_DUR] [12s_ISI] [100_TRIALS]](/task_designs/files/15_EVENT_[2s_TR]_[1s_DUR]_[12s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 10-14 s (mean ISI = 12 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 44 min

* [16_EVENT [2s_TR] [1s_DUR] [6s_ISI] [20_TRIALS]](/task_designs/files/16_EVENT_[2s_TR]_[1s_DUR]_[6s_ISI]_[20_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 20 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 5 min
 
* [17_EVENT [2s_TR] [1s_DUR] [6s_ISI] [40_TRIALS]](/task_designs/files/17_EVENT_[2s_TR]_[1s_DUR]_[6s_ISI]_[40_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 40 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 9.7 min

* [18_EVENT [2s_TR] [1s_DUR] [6s_ISI] [60_TRIALS]](/task_designs/files/18_EVENT_[2s_TR]_[1s_DUR]_[6s_ISI]_[60_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 60 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 14 min
 
* [19_EVENT [2s_TR] [1s_DUR] [6s_ISI] [80_TRIALS]](/task_designs/files/19_EVENT_[2s_TR]_[1s_DUR]_[6s_ISI]_[80_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 80 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 19 min
 
* [20_EVENT [2s_TR] [100ms_DUR] [6s_ISI] [200_TRIALS]](/task_designs/files/20_EVENT_[2s_TR]_[100ms_DUR]_[6s_ISI]_[200_TRIALS].mat)
   * Event-related design
   * TR = 2 s
   * Event duration = 100 ms
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 200 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 40.9 min
 
* [21_EVENT [500ms_TR] [100ms_DUR] [6s_ISI] [50_TRIALS]](/task_designs/files/21_EVENT_[500ms_TR]_[100ms_DUR]_[6s_ISI]_[50_TRIALS].mat)
   * Event-related design
   * TR = 500 ms
   * Event duration = 100 ms
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 50 events per condition
   * Dummy scans: first 14 time points (7 s)
   * Total scan time = 10.3 min
 
* [22_EVENT [700ms_TR] [100ms_DUR] [6s_ISI] [70_TRIALS]](/task_designs/files/22_EVENT_[700ms_TR]_[100ms_DUR]_[6s_ISI]_[70_TRIALS].mat)
   * Event-related design
   * TR = 700 ms
   * Event duration = 100 ms
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 70 events per condition
   * Dummy scans: first 10 time points (7 s)
   * Total scan time = 14.4 min
 
* [23_EVENT [1s_TR] [100ms_DUR] [6s_ISI] [100_TRIALS]](/task_designs/files/23_EVENT_[1s_TR]_[100ms_DUR]_[6s_ISI]_[100_TRIALS].mat)
   * Event-related design
   * TR = 1 s
   * Event duration = 100 ms
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 6 time points (6 s)
   * Total scan time = 20.6 min
 
* [24_BLOCK [2s_TR] [20s_DUR] [10_BLOCKS] [**ASYMMETRIC**]](/task_designs/files/24_BLOCK_[2s_TR]_[20s_DUR]_[10_BLOCKS]_[ASYMMETRIC].mat)
   * Block design
   * **Asymmetric synaptic weight matrices**
   * Repetition time (TR) = 2 s
   * Block duration = 20 s
   * 10 blocks per condition
   * Block sequence: [Cond_A, Rest, Cond_B, Rest, Cond_B, ... ]
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 13.3 min
 
* [25_BLOCK [2s_TR] [20s_DUR] [20_BLOCKS] [**ASYMMETRIC**]](/task_designs/files/25_BLOCK_[2s_TR]_[20s_DUR]_[20_BLOCKS]_[ASYMMETRIC].mat)
   * Block design
   * **Asymmetric synaptic weight matrices**
   * Repetition time (TR) = 2 s
   * Block duration = 20 s
   * 20 blocks per condition
   * Block sequence: [Cond_A, Rest, Cond_B, Rest, Cond_B, ... ]
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 26.6 min
     
* [26_EVENT [2s_TR] [1s_DUR] [6s_ISI] [100_TRIALS] [**ASYMMETRIC**]](/task_designs/files/26_EVENT_[2s_TR]_[1s_DUR]_[6s_ISI]_[100_TRIALS]_[ASYMMETRIC].mat)
   * Event-related design
   * **Asymmetric synaptic weight matrices**
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 100 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 23.6 min
 
* [27_EVENT [2s_TR] [1s_DUR] [6s_ISI] [200_TRIALS] [**ASYMMETRIC**]](/task_designs/files/27_EVENT_[2s_TR]_[1s_DUR]_[6s_ISI]_[200_TRIALS]_[ASYMMETRIC].mat)
   * Event-related design
   * **Asymmetric synaptic weight matrices**
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI) = 4-8 s (mean ISI = 6 s)
   * 200 events per condition
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 40.9 min

* [28_BLOCK [720ms_TR] [HCP_WM]](/task_designs/files/28_BLOCK_[720ms_TR]_[HCP_WM].mat)
   * Block design (Human Connectome Project, Working Memory Task)
   * Repetition time (TR) = 720 ms
   * Task block duration = 27.5 s (2-back, 1-back)
   * Rest (R) = 15 s
   * 8 blocks per condition
   * Block sequence: [2-b, 1-b, R, 2-b, 1-b, R, 2-b, 2-b, R, 1-b, 1-b, R, 2-b, 1-b, R, 2-b, 1-b, R, 1-b, 2-b, R, 1-b, 2-b]
   * Dummy scans: first 25 time points (18 s)
   * Total scan time = 10 min

* [29_BLOCK [720ms_TR] [HCP_SOCIAL]](/task_designs/files/29_BLOCK_[720ms_TR]_[HCP_SOCIAL].mat)
   * Block design (Human Connectome Project, Social Cognition Task)
   * Repetition time (TR) = 720 ms
   * Task block duration = 23 s (Social, Random)
   * Rest (R) = 15 s
   * 5 blocks per condition
   * Block sequence: [Soc, R, Soc, R, Rnd, R, Soc, R, Rnd, Soc, R, Rnd, R, Rnd, R, Soc, R, Rnd, R]
   * Dummy scans: first 25 time points (18 s)
   * Total scan time = 7 min
 
* [30_EVENT [2s_TR] [CNP_SST] [All_stop_trials]](/task_designs/files/30_EVENT_[2s_TR]_[CNP_SST]_[All_stop_trials].mat)
   * Event-related design (UCLA Consortium for Neuropsychiatric Phenomics, Stop Signal Task)
   * TR = 2 s
   * Event duration = 1.5 s
   * Random interstimulus interval (ISI) = 0.5-4 s (mean ISI = 1 s)
   * 96 GO trials
   * 32 STOP-signal trials
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 7 min

* [31_EVENT [2s_TR] [CNP_SST] [Correct_stop_trials]](/task_designs/files/31_EVENT_[2s_TR]_[CNP_SST]_[Correct_stop_trials].mat)
   * Unbalanced event-related design (UCLA Consortium for Neuropsychiatric Phenomics, Stop Signal Task)
   * TR = 2 s
   * Event duration = 1.5 s
   * Random interstimulus interval (ISI) = 0.5-4 s (mean ISI = 1 s)
   * 94 GO trials
   * 17 Correct STOP-signal trials
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 7 min

 * [32_EVENT [2s_TR] [CNP_TST] [Switch_vs_NoSwitch]](/task_designs/files/32_EVENT_[2s_TR]_[CNP_TST]_[Switch_vs_NoSwitch].mat)
   * Unbalanced event-related design (UCLA Consortium for Neuropsychiatric Phenomics, Task Switching Task)
   * TR = 2 s
   * Event duration = 1 s
   * Random interstimulus interval (ISI), mean ISI = 3 s
   * 24 Switch trials
   * 72 No Switch trials
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 6 min
  
* [33_BLOCK [2s_TR] [20s_DUR] [20_BLOCKS]](/task_designs/files/33_BLOCK_[2s_TR]_[20s_DUR]_[20_BLOCKS].mat)
   * Block design
   * Repetition time (TR) = 2 s
   * Block duration = 20 s
   * 20 blocks per condition
   * Block sequence: [Cond_A, Rest, Cond_B, Rest, Cond_B, ... ]
   * Dummy scans: first 3 time points (6 s)
   * Total scan time = 26.6 min
