


About
=================

DNABarcodeCompatibility: R-package to find optimised sets of compatible barcodes for multiplex experiments.

News
=================

* The DNABarcodeCompatibility package has been approved by Bioconductor and was added to the Bioconductor release 3.9: [https://bioconductor.org/packages/DNABarcodeCompatibility](https://bioconductor.org/packages/DNABarcodeCompatibility)

* The DNABarcodeCompatibility package is also directly usable through a Shiny web application hosted by the Institut Pasteur: [https://dnabarcodecompatibility.pasteur.fr](https://dnabarcodecompatibility.pasteur.fr)

Installation 
================

* Requirements
    + Install [R](https://www.r-project.org/) if not yet installed (R >= 3.6 is required).


* Within a R console, type in the following commands:
    
```
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("DNABarcodeCompatibility")
```


Documentation
================

[Introduction](https://www.bioconductor.org/packages/release/bioc/vignettes/DNABarcodeCompatibility/inst/doc/introduction.html)

[API documentation](https://www.bioconductor.org/packages/release/bioc/manuals/DNABarcodeCompatibility/man/DNABarcodeCompatibility.pdf)


* Related tools:

In addition, DNABarcodeCompatibility can be used from a graphical user interface :

[Shiny web-based graphical user interface](https://gitlab.pasteur.fr/ida-public/dnabarcodecompatibility_shiny). This interface can be run locally within a web browser or deployed on a web server.



Support
=========

Please use the [gitlab ticket system](https://gitlab.pasteur.fr/ida-public/dnabarcodecompatibility/-/issues) to report issues or suggestions. 
We also welcome pull requests.



Reference
==========

Trébeau C, Boutet de Monvel J, Wong Jun Tai F, Petit C, Etournay R. DNABarcodeCompatibility: an R-package for optimizing DNA-barcode combinations in multiplex sequencing experiments. Bioinformatics. 2018 Dec 21. [doi: 10.1093/bioinformatics/bty1030](https://doi.org/10.1093/bioinformatics/bty1030). [Epub ahead of print] PubMed PMID: 30576403.



