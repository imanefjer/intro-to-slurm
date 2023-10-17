#!/bin/bash
#SBATCH --job-name=errorhandling
#SBATCH --output=exercise6.txt
#SBATCH --error=error.txt

errorfile.txt
if [ $? -ne 0 ]; then
    echo "Job failed with exit code $?"
fi
