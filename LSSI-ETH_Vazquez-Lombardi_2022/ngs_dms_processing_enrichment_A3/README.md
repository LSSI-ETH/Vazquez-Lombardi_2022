# Vazquez-Lombardi_2022

Custom code for data analysis from "High-throughput T cell receptor engineering by functional screening identifies candidates with enhanced potency and specificity". It also contains visualization code and example datasets in .fastq or .csv file format.

In ngs_dms_processing_enrichment_A3 we show our NGS DMS processing pipeline with the A3 TCR as example. Raw FASTQ files can be found in 00_gw_fasta_data and serve as input for the first processing step in 01_direct_processing_of_fasta which is the identification of the mutagenesis region. These extracted regions are saved and can be channeled into the second processing step in 02_freq_enrichment_analysis which is to detect and visualize positional enrichment.
