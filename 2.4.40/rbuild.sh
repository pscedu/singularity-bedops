#!/bin/bash

IMAGE=singularity-BEDOPS-2.4.40.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION
