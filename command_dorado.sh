#!/usr/bin/env bash

#SBATCH --job-name=bc_dorado
#SBATCH --time=10:00:00
#SBATCH --partition=regular
#SBATCH --ntasks-per-node=16
#SBATCH --mem=32GB
#SBATCH --gres=gpu:rtx3090:1

module load CUDA

cd /scratch/heral/basecalling

model=models/dna_r10.4.1_e8.2_400bps_sup@v4.3.0
files=files/pod5s/

export LANG=C
export LC_ALL=C

dorado-0.5.0-linux-x64/bin/dorado basecaller \
    --device "cuda:all" \
    --emit-fastq \
    --verbose \
    $model \
    $files > output.fastq
