#!/bin/bash

# USAGE: sh 1_chimeric_target_host.sh 

# Change to our working directory
cd ~/wf-PCIP

# Location of the human genome hg38
GENOME=~/wf-PCIP/RefSeq/host/GRCh38.p14.fasta

# Location of the virus reference sequence
TARGET=~/wf-PCIP/RefSeq/target/NC_001802.1.fasta

# Make directory to store chimeric sequence
mkdir TARGETHOST_INDEX

# Move to the output directory
cd TARGETHOST_INDEX

# Concatenate virus and human sequences
cat $GENOME $TARGET > BTA_BLV.fa

# Set variable for the chimeric sequence
TARGETHOST=~/wf-PCIP/TARGETHOST_INDEX/BTA_BLV.fa
