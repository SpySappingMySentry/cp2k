#!/bin/bash

#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --time=00:05:00
#SBATCH --exclusive
#SBATCH --nodes=4
#SBATCH --ntasks=16
#SBATCH --tasks-per-node=4
#SBATCH --cpus-per-task=9

module load cp2k

export OMP_NUM_THREADS=6

srun --cpu-bind=cores cp2k.psmp -i /work/tc047/tc047/mrnuff-cirrus/cp2k/benchmarks/QS/H2O-64.inp -o H2O-64-output-9OMP-4.txt
