#!/bin/bash
#SBATCH --job-name=exercise4jobB
#SBATCH --output=exercise4jobB.txt
#SBATCH --dependency=afterok:5843708


python exercise4_2.py

