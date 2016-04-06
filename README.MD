This repository contains the code used in the experiments for the following paper:

A. Cropper and S.H. Muggleton. Learning higher-order logic programs through abstraction and invention. IJCAI 2016. To appear.

# data description

For each experiment, the experimental data are in the folder 'results'. Each input-n-k.pl file corresponds to the input for n training examples for the kth trial. Each program-{ho,fo}-n-k.pl file corresponds to the metagol output for n training examples for the kth trial.

# reproducing the figures

To reproduce the results for the plots in figure 7, run bash gen-plots in the waiter subfolder.
To reproduce the results for the plots in figure 10, run bash gen-plots in the chess subfolder.

# rerunning the experiments

To rerun the experiments with new random training data, call 'bash new-experiment'. The experimental results will be saved in a folder named 'new-results'. Note that experiments take a long time to finish. We recommend using YAP Prolog.

Contact a.cropper13@imperial.ac.uk with any queries.# ijcai16-metagol_ai
