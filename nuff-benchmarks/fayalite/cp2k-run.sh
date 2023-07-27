#!/bin/bash

#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --time=00:05:00
#SBATCH --exclusive
#SBATCH --nodes=1
#SBATCH --ntasks=36
#SBATCH --tasks-per-node=36
#SBATCH --cpus-per-task=1

module load cp2k

export OMP_NUM_THREADS=1

srun --cpu-bind=cores cp2k.psmp -i benchmarks/Fayalite-FIST/fayalite.inp -o fayalite-output.txt
