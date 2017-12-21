# ps_759
First you need to install pytorch, openmpi and mpi4py.
Then you should download mnist and cifar10 data on all of your nodes.
Then start your aws ec2 instances and put the correct address in the hosts_ files in the tools directory.
Then run local_script.sh and remote_script.sh to finish configuration.
Finally, To run the demo, you have to run ./run.sh.