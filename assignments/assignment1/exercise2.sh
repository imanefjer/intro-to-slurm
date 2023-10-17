#!/bin/bash

#SBATCH --job-name=exercise2
#SBATCH --output=exercise2.txt

#SBATCH --cpus-per-task=4
#SBATCH --mem=4G

echo "Hello, SLURM!" > "exercise2.txt"
