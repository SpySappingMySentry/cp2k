#!/bin/bash

#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --time=00:05:00
#SBATCH --exclusive
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --tasks-per-node=4
#SBATCH --cpus-per-task=9

module load cp2k

export OMP_NUM_THREADS=9

srun --cpu-bind=cores cp2k.psmp -i /work/tc047/tc047/mrnuff-cirrus/cp2k/benchmarks/Fayalite-FIST/fayalite.inp -o fayalite-output-9OMP-4.txt
