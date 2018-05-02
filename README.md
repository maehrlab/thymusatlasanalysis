## README

This folder contains scripts used for analysis of the data in our recent *Immunity* submission. 

## Reproduction

You will need a couple of key R packages: `Seurat` version 1.4 (from the Satija lab) and `thymusatlastools` version 1 (from the Maehr lab). We use [`freezr`](https://github.com/ekernf01/freezr) to save code and session info and to track processed data for use in downstream scripts. 

You can download the digital gene expression matrices (for both the full transcriptome and TCR realignment) from GEO accession GSE107910. 

`main.Rmd` is the master script for the paper draft. To reproduce the paper, run it line by line. Every other `.Rmd` is called by the master script to produce a figure or part of a figure. 


We're passionate about reproducibility, but we know that exact reproduction is difficult. If you have any trouble, please contact `eric epu kernfeld bu vnbttnfe epu fev`, where the address has been one-letter shifted to hide from robots. 