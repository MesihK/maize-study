#!/bin/bash
#
#SBATCH --job-name=prostgpu
#SBATCH --time=10-0:00:00  # max job runtime
#SBATCH --cpus-per-task=8  # number of processor cores
#SBATCH --nodes=1  # number of nodes
#SBATCH --partition=gpu  # partition(s)
#SBATCH --gres=gpu:1
#SBATCH --mem=128G  # max memory

module load miniconda3 python
source activate /work/LAS/jernigan-lab/mesih/conda/gpu

srun prost makedb ../proteins.fa proteins.prdb
