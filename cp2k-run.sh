#!/bin/bash

#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --time=00:05:00
#SBATCH --exclusive
#SBATCH --nodes=2
#SBATCH --ntasks=18
#SBATCH --tasks-per-node=9
#SBATCH --cpus-per-task=2

module load cp2k

export OMP_NUM_THREADS=2

srun --cpu-bind=cores cp2k.psmp -i /work/tc047/tc047/mrnuff-cirrus/cp2k/benchmarks/QS/H2O-64.inp -o H2O-64-output.txt
