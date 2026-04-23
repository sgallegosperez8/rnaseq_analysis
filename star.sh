#!/bin/bash

STAR_INDEX="$HOME/labs/finalproj/genome-index"
FASTQ_DIR="$HOME/labs/finalproj/SRA"
OUTPUT_DIR="$HOME/labs/finalproj/star-output"


# Create output directory if it doesn't exist
mkdir -p ${OUTPUT_DIR}

# Loop through R1 files
for r1 in ${FASTQ_DIR}/*_1.fastq; do
    # Get sample name by removing _R1.fastq.gz
    sample=$(basename $r1 "_1.fastq")
    # Define R2 file based on R1
    r2="${FASTQ_DIR}/${sample}_2.fastq"
    
    echo "Processing $sample..."

    # Run STAR
    STAR --runThreadN 8 \
        --genomeDir "$STAR_INDEX" \
        --readFilesIn "$r1" "$r2" \
        --outSAMtype BAM SortedByCoordinate \
        --outFileNamePrefix "${OUTPUT_DIR}/${sample}_"

done
