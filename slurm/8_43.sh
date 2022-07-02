#!/bin/bash

#SBATCH -J mat_8_43
#SBATCH -p general
#SBATCH -o txt/mat_8_43_%j.txt
#SBATCH -e err/mat_8_43_%j.err
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
matlab -r "function_carbonate_pointNet('8/8_43.bin')"
matlab -r "function_carbonate_pointNet('9/8_43.bin')"