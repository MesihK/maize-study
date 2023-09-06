#!/bin/bash

#Submit this script with: sbatch thefilename

#SBATCH --time=2-0:00:00  # max job runtime
#SBATCH --cpus-per-task=32  # number of processor cores
#SBATCH --nodes=1  # number of nodes
#SBATCH --partition=speedy  # partition(s)
#SBATCH --mem=128G  # max memory


# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
module load miniconda3 python
source activate /work/LAS/jernigan-lab/mesih/conda/env

prost search --thr 0.05 -n 32 proteins.prdb uniprot07.pdb08.prdb uniprot07.pdb08.05.prost.res
