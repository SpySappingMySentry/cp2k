#!/bin/bash

#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --time=00:05:00
#SBATCH --exclusive
#SBATCH --nodes=2
#SBATCH --ntasks=18
#SBATCH --tasks-per-node=9
#SBATCH --cpus-per-task=4

module load cp2k

export OMP_NUM_THREADS=4

srun --cpu-bind=cores cp2k.psmp -i benchmarks/QS/H2O-64.inp -o H2O-64-output.txt
