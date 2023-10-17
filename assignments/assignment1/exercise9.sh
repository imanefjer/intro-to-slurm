#!/bin/bash
#SBATCH --job-name=exercise9
#SBATCH --ntasks=1
#SBTACH --mem=2G

allocationId=$(salloc --ntasks=$SLURM_NTASKS --mem=$SLURM_MEM | grep "salloc: Granted job allocation" | awk '{print $4}')

srun --pty bash
scancel $allocationId
