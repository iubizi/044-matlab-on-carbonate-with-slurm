string = '''#!/bin/bash

#SBATCH -J mat_{}
#SBATCH -p general
#SBATCH -o txt/mat_{}_%j.txt
#SBATCH -e err/mat_{}_%j.err
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
matlab -r "function_carbonate_pointNet(\'{}\')"
matlab -r "function_carbonate_pointNet(\'{}\')"'''

fsh = open( 'run_human.sh', 'w' )

for i in range(0, 16, 2):
    
    for j in range(48):

        name = str(i) + '_' + str(j)
        bin_dir = str(i) + '/' + name + '.bin'
        bin_dir_1 = str(i+1) + '/' + name + '.bin'
        
        fw = open( 'slurm/' + name + '.sh', 'w' )
        print( string.format(name, name, name, bin_dir, bin_dir_1), file=fw )
        fw.close()

        print('sbatch', name+'.sh', file=fsh) # command

fsh.close()
