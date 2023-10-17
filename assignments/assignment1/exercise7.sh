#!/bin/bash
#SBATCH --job-name=exercise7
#SBATCH --output=exercise7.txt

sacct -j 5843714 --format=JobID,JobName,Partition,Account,AllocCPUS,Start,End,Elapsed,MaxRSS,MaxVMSize,ExitCode

