#!/bin/bash

#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --time=00:10:00
#SBATCH --exclusive
#SBATCH --nodes=1
#SBATCH --ntasks=36
#SBATCH --tasks-per-node=36
#SBATCH --cpus-per-task=1

my_cp2k_bin=/work/tc047/tc047/mrnuff-cirrus/cp2k/cp2k-9.1/exe/Cirrus-intel

export OMP_NUM_THREADS=1
export LD_LIBRARY_PATH=/work/tc047/tc047/mrnuff-cirrus/cp2k/cp2k-9.1/libs/elpa-openmp/lib:$LD_LIBRARY_PATH

echo $LD_LIBRARY_PATH

module load intel-20.4/compilers intel-20.4/mpi intel-20.4/cmkl
srun --cpu-bind=cores $my_cp2k_bin/cp2k.psmp -i /work/tc047/tc047/mrnuff-cirrus/cp2k/benchmarks/Fayalite-FIST/fayalite.inp -o fayalite-output-1OMP-8.txt
