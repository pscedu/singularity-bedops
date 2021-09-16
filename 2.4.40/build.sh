#!/bin/bash

IMAGE=singularity-BEDOPS-2.4.40.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
