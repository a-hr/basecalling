#!/usr/bin/env bash

module load Python
conda activate /scratch/heral/envs/biotools

pod5s=$1

mkdir -p fast5s

rm -f fast5s/*

for file in $pod5s/*
do
    echo $file
    pod5 convert to_fast5 -o fast5s/ $file
done
