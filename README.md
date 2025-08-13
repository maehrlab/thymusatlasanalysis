## README

This folder contains scripts used for analysis of the data in our 2018 *Immunity* paper [(link)](https://www.ncbi.nlm.nih.gov/pubmed/29884461). 

> Genga RMJ†, Kernfeld EM†, Neherin K, Magaletta ME, Xu P, Maehr R.
> A single-cell transcriptomic atlas of thymus organogenesis resolves cell types and developmental maturation. Immunity 2018.
>
> †Equal contribution

## Reproduction

You will need a couple of key R packages: `Seurat` version 1.4 (from the Satija lab) and `thymusatlastools` version 1 [from the Maehr lab](https://github.com/maehrlab/thymusatlastools). We use [`freezr`](https://github.com/ekernf01/freezr) to save code and session info and to track processed data for use in downstream scripts. 

You can download the digital gene expression matrices (for both the full transcriptome and TCR realignment) from GEO accession GSE107910. Put them in the `data/` directory of this folder. 

`main.Rmd` is the master script for the paper draft. To reproduce the paper, edit the variable `proj_dir` to point to this repo, then run the notebook line by line. All other `.Rmd` files are called by the master script to produce figures or tables.

We're passionate about reproducibility, but we know that exact reproduction is difficult. If you have any trouble, please contact `eric epu kernfeld bu vnbttnfe epu fev`, where the address has been one-letter shifted to hide from robots. 
