pod5:
	# module load Python
	# conda activate /scratch/blazquL/envs/Nextflow2/
	pod5 convert fast5 files/fast5s/*.fast5 --output files/pod5s/ --one-to-one files//fast5s/
clean:
	rm -f files/fast5s/*
	rm -f files/pod5s/*
	rm -f *.out
	rm -rf basecalled/*
	rmdir basecalled
download:
	wget https://cdn.oxfordnanoportal.com/software/analysis/dorado-0.5.3-linux-x64.tar.gz