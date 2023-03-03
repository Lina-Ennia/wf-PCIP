#!/bin/bash

# USAGE: sh 2_indexing.sh


# Define variable for chimeric sequence
TARGETHOST=~/wf-PCIP/TARGETHOST_INDEX/BTA_BLV.fa

# Indexing of the chimeric sequence
minimap2 -H -d ~/wf-PCIP/TARGETHOST_INDEX/BTA_BLV.mni $TARGETHOST
samtools faidx $TARGETHOST

# Define variable for indexed chimeric sequence
TARGETHOSTINDEX=~/wf-PCIP/TARGETHOST_INDEX/BTA_BLV.mni
