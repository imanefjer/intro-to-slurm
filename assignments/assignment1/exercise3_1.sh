#!/bin/bash
#SBATCH --job-name=test
#SBATCH --output=test.txt
#SBATCH --array=1-10
#SBATCH --ntasks=2

# Process tasks, skipping the header row
awk 'NR > 1 { print $1, $2, $3 }' config.txt | while read -r task_id sample_name sex; do
    echo "This is array task $task_id, the sample name is $sample_name, and the sex is $sex" >> "exercise3_1.txt"
done

