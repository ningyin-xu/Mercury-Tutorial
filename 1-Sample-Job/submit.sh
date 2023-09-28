#!/bin/bash

# This is a comment

#---------------------------------------------------------------------------------
# Account information

#SBATCH --account=phd              # basic (default), staff, phd, faculty

#---------------------------------------------------------------------------------
# Resources requested

#SBATCH --partition=standard       # standard (default), long, gpu, mpi, highmem
#SBATCH --cpus-per-task=1          # number of CPUs requested (for parallel tasks)
#SBATCH --mem=1G                   # requested memory
#SBATCH --time=0-00:05:00          # wall clock limit (d-hh:mm:ss)

# We requested 1 cpu, 1GB RAM, and 5 minutes of run time
# (I skipped the email notification settings, you can add them if you want)

#---------------------------------------------------------------------------------
# Job specific name (helps organize and track progress of jobs)

#SBATCH --job-name=sample_slurm_job    # user-defined job name


#---------------------------------------------------------------------------------
# Print some useful variables

echo "Job ID: $SLURM_JOB_ID"
echo "Job User: $SLURM_JOB_USER"
echo "Num Cores: $SLURM_CPUS_ON_NODE"

#---------------------------------------------------------------------------------
# Load necessary modules for the job

# module load <modulename>
# No modules loaded/needed

#---------------------------------------------------------------------------------
# Commands to execute below...

# Print hello, wait a minute, then print finished

echo "Hello"
sleep 1m
echo "Finished"

#---------------------------------------------------------------------------------
