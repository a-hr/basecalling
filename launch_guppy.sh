#!/usr/bin/env bash

#SBATCH --job-name=bc_guppy
#SBATCH --partition=regular
#SBATCH --ntasks-per-node=16
#SBATCH --mem=32GB
#SBATCH --gres=gpu:p40:1


# variables
dir=/scratch/heral/basecalling/:/scratch/heral/basecalling/
img=images/genomicpariscentre-guppy-gpu.img
command=/scratch/heral/basecalling/command_guppy.sh

module load CUDA
module load Singularity

singularity exec -B $dir --nv $img bash $command
