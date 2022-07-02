#!/bin/bash

#SBATCH -J mat_14_0
#SBATCH -p general
#SBATCH -o txt/mat_14_0_%j.txt
#SBATCH -e err/mat_14_0_%j.err
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=jxu4@iu.edu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=02:00:00
#SBATCH --mem=16G

#Load any modules that your program needs
module load matlab

#Run your program
matlab -r "function_carbonate_pointNet('14/14_0.bin')"
matlab -r "function_carbonate_pointNet('15/14_0.bin')"
