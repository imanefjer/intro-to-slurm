#!/bin/bash
#SBATCH --job-name=exercise3
#SBATCH --output=exercise3.txt
#SBATCH --array=1-10
#SBATCH --cpus-per-task=44
#SBATCH --mem=360G
tail -n +2 config.txt | while IFS=' ' read -r task_id sample_name sex; do
    echo "This is array task $task_id, the sample name is $sample_name, and the sex is $sex" >> "exercise3.txt"
done

