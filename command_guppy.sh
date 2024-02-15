#!/usr/bin/env bash
# rna_r9.4.1_70bps_hac
# dna_r10.4_e8.1_sup

guppy_basecaller -i files/fast5s/ -s basecalled/ -c rna_r9.4.1_70bps_hac.cfg --device auto --compress_fastq --num_callers 16 --chunks_per_runner 400
