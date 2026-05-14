# Differential Expression Analysis of *P. Aeruginosa* PAO1 under Heat Shock Treatment

## Main Objective
The primary goal of this analysis was to evaluate the transcriptomic response of **Pseudomonas Aeruginosa PAO1** when subjected to **heat shock treatment** (shaken and kept at 46°C) compared to a control group (37°C) [cite: 5, 22]. By utilizing modern bioinformatic tools, the study aimed to evaluate the differences and similarities between this updated analysis and the original 2016 study by Chan et al. [cite: 18, 19].

## Bioinformatic Pipeline & Tools
The analysis employed a suite of modern bioinformatic tools to process raw sequence data and identify differentially expressed genes:

| Stage | Tool | Purpose |
| :--- | :--- | :--- |
| **Quality Control** | **FastQC** (v0.11.2) | Evaluated the quality of raw sequences [cite: 25]. |
| **Preprocessing** | **TrimGalore** (v2.2.0) | Automatically trimmed sequence primers [cite: 25]. |
| **Indexing & Alignment** | **STAR** (v2.7.11b) | Created a genomic index and aligned samples to the reference genome (GCF_000006765.1) [cite: 26]. |
| **File Processing** | **samtools** (v1.23.1) | Sorted resulting Binary Alignment Map (BAM) files [cite: 27]. |
| **Quantification** | **featureCounts** (v2.1.1) | Produced raw gene counts using the reference genome annotation [cite: 27, 31]. |
| **Differential Analysis** | **DESeq2** | Performed differential gene expression analysis [cite: 28]. |
| **Visualization** | **ggplot2, EnhancedVolcano, pheatmap** | Generated PCA plots, volcano plots, and heatmaps in R (v4.6.0) [cite: 28]. |

## Key Findings
* **High Alignment Accuracy:** The pipeline achieved an average **99.7% successful alignment** across all 6 samples, significantly improving upon the 90% alignment reported in the original study [cite: 32].
* **Clear Group Differentiation:** Principal Component Analysis (PCA) revealed distinct clustering between the control and 'heat-shock' groups, indicating significant transcriptomic shifts [cite: 39].
* **Significant Gene Regulation:** The analysis identified a large number of up-regulated and down-regulated genes (2259 variables total in the volcano plot) involved in the heat-shock response [cite: 45].
* **Improved Methodology:** Transitioning from TopHat2/Cufflinks to STAR/DESeq2 provided higher mapping efficiency and a more robust framework for handling large computational data [cite: 16, 35, 36].

## References
* Chan et al. (2016) - Original Study.
* Reference Genome: GCF_000006765.1.
