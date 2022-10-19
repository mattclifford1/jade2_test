#!/bin/bash

# set the number of nodes
#SBATCH --nodes=1

# set which partition
#SBATCH -p devel

# set max wallclock time
#SBATCH --time=0:00:10

# set name of job
#SBATCH --job-name=job123

# set number of GPUs
#SBATCH --gres=gpu:1

# set output and error files
#SBATCH -o test_output.txt
#SBATCH -e test_error.txt


# run the application
module load pytorch/1.12.1
nvidia-smi
python --version
python test_torch.py
