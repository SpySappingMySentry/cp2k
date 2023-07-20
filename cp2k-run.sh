#!/bin/bash

#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --time=00:05:00
#SBATCH --exclusive
#SBATCH --nodes=4
#SBATCH --ntasks=8
#SBATCH --tasks-per-node=2
#SBATCH --cpus-per-task=18

module load cp2k

export OMP_NUM_THREADS=18

srun --cpu-bind=cores cp2k.psmp -i /work/tc047/tc047/mrnuff-cirrus/cp2k/benchmarks/QS/H2O-64.inp -o /work/tc047/tc047/mrnuff-cirrus/cp2k/nuff-benchmarks/cp2k-output.txt
