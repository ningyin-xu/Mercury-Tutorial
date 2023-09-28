#!/bin/bash

#Here is a comment

#SBATCH --account=phd

#SBATCH --job-name=Parallel_Job
#SBATCH --output=parallel-%j.out
#SBATCH --error=parallel-%j.err

#SBATCH --time=00:05:00

#SBATCH --cpus-per-task=2 # Use 2 cores
#SBATCH --mem-per-cpu=1G # Ask for 1 GB memory per cpu


# Print some useful variables

echo "Job ID: $SLURM_JOB_ID"
echo "Job User: $SLURM_JOB_USER"
echo "Num Cores: $SLURM_CPUS_ON_NODE"
echo "I have $SLURM_CPUS_ON_NODE cores allocated on this job."


# Load the Modules
module load R/4.2/4.2.2


# Run your code
echo "Begin Job"
R --no-save < parallel-job.R > parallel-job.log
echo "Job Complete"
