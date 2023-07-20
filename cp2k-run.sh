#!/bin/bash

#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --time=00:05:00

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16

module load cp2k

cp2k.psmp -i /work/tc047/tc047/mrnuff-cirrus/cp2k/benchmarks/QS/H2O-64.inp -o cp2k-output.txt

