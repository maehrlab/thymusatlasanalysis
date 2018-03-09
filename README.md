## README

This folder contains scripts used for analysis of the data in our recent *Immunity* submission. 

If you just want to use our tools, you're in the wrong place: take a look at `thymusatlastools2` instead. It's much improved compared to `thymusatlastools`, which is preserved for reproducibility.

## Reproduction

You will need a couple of key R packages: `Seurat` version 1.4 (from the Satija lab) and `thymusatlastools` version 1 (from the Maehr lab). Download the digital gene expression matrices (for full data and TCR realignment) from GEO accession GSE107910. 

#### Workflow and key files

- `main.Rmd` is the master script for the paper draft. To reproduce the paper, run it line by line.
- Every other `.Rmd` is called by the master script to produce a figure or part of a figure. 
- `thymus_functions.Rmd` contains objects that are not general-purpose, but that do need to be used in multiple different analysis scripts. `thymus_functions.R` is just a "purled" version. 

I write and test scripts interactively, but for final results I use [`freezr`](https://github.com/ekernf01/freezr) to save code, output, and session info. 

Many analyses depend on upstream results -- for instance, I cluster the cells, then subset the TECs for further analysis. To avoid hard-coding too many paths, I use `freezr`'s `inventory_add` and `inventory_get`. 