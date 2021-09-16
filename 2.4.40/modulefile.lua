--
-- bedops 2.4.40 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: BEDOPS is an open-source command-line toolkit that performs highly efficient and scalable Boolean and other set operations, statistical calculations, archiving, conversion and other management of genomic data of arbitrary scale. Tasks can be easily split by chromosome for distributing whole-genome analyses across a computational cluster."
-- "Keywords: singularity, bioinformatics"

whatis("Name: BEDOPS")
whatis("Version: 2.4.40")
whatis("Category: Biological Sciences")
whatis("Keywords: singularity, bioinformatics")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: BEDOPS is an open-source command-line toolkit that performs highly efficient and scalable Boolean and other set operations, statistical calculations, archiving, conversion and other management of genomic data of arbitrary scale. Tasks can be easily split by chromosome for distributing whole-genome analyses across a computational cluster.")

help([[
BEDOPS is an open-source command-line toolkit that performs highly efficient and scalable Boolean and other set operations, statistical calculations, archiving, conversion and other management of genomic data of arbitrary scale. Tasks can be easily split by chromosome for distributing whole-genome analyses across a computational cluster.

To load the module type

> module load bedops/2.4.40

To unload the module type

> module unload bedops/2.4.40

Tools included in this module are

* bam2bed
* bam2bed_gnuParallel
* bam2bed_sge
* bam2bed_slurm
* bam2starch
* bam2starch_gnuParallel
* bedextract
* bedmap
* bedops
* closest-features
* convert2bed
* gff2bed
* gff2starch
* gtf2bed
* gtf2starch
* gvf2bed
* gvf2starch
* psl2bed
* psl2starch
* rmsk2bed
* rmsk2starch
* sam2bed
* sam2starch
* sort-bed
* starch
* starchcat
* starch-diff
* starchstrip
* unstarch
* vcf2bed
* vcf2starch
* wig2bed
* wig2starch]])

local package = "BEDOPS"
local version = "2.4.40"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
