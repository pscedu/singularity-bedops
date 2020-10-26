#!/bin/bash

if ! [ -x "$(command -v singularity)" ]; then
	module load singularity/3.5.3
fi

singularity pull https://depot.galaxyproject.org/singularity/bedops:2.4.39--hc9558a2_0
mv bedops:2.4.39--hc9558a2_0 singularity-bedops-2.4.39.sif
