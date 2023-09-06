#!/bin/bash

#Submit this script with: sbatch thefilename

#SBATCH --time=2-0:00:00  # max job runtime
#SBATCH --cpus-per-task=1  # number of processor cores
#SBATCH --nodes=1  # number of nodes
#SBATCH --partition=speedy  # partition(s)
#SBATCH --mem=16G  # max memory


# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
module load augustus

augustus --species=maize --UTR=off --strand=both --alternatives-from-evidence=false --alternatives-from-sampling=false --noInFrameStop=true --gff3=on  GF1_chr5_extraction_105000000..125000000.fasta > out.augustus
