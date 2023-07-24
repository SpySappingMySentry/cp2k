#!/bin/bash

#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --time=00:05:00
#SBATCH --exclusive
#SBATCH --nodes=4
#SBATCH --ntasks=24
#SBATCH --tasks-per-node=6
#SBATCH --cpus-per-task=6

module load cp2k

export OMP_NUM_THREADS=6

srun --cpu-bind=cores cp2k.psmp -i benchmarks/QS/H2O-64.inp -o H2O-64-output.txt
