#!/bin/bash
#SBATCH --job-name=exercise8
#SBATCH --output=exercise8.txt
#SBATCH --partition=gpu
#SBATCH --nodelist=node13
#SBATCH --exclude=node02,node03,node15

echo "test , exercise 8"

