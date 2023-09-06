#!/bin/bash
#
#SBATCH --job-name=esmfold
#SBATCH --time=10-0:00:00  # max job runtime
#SBATCH --cpus-per-task=8  # number of processor cores
#SBATCH --nodes=1  # number of nodes
#SBATCH --partition=gpu  # partition(s)
#SBATCH --gres=gpu:1
#SBATCH --exclude=frost-2,frost-3,frost-4,frost-5,frost-6,crysis  # there's no real way to specify multiple gpus types, so exclude the nodes that contain unacceptable gpus
#SBATCH --mem=128G  # max memory

module load miniconda3 python
source activate /work/LAS/jernigan-lab/mesih/conda/gpu

srun python esmfold_inference.py -i ../proteins.fa -o all --max-tokens-per-batch 1024 --chunk-size 128 
