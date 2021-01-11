--
-- bedops 2.4.39 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: BEDOPS is an open-source command-line toolkit that performs highly efficient and scalable Boolean and other set operations, statistical calculations, archiving, conversion and other management of genomic data of arbitrary scale. Tasks can be easily split by chromosome for distributing whole-genome analyses across a computational cluster."

whatis("Name: BEDOPS")
whatis("Version: 2.4.39")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: BEDOPS is an open-source command-line toolkit that performs highly efficient and scalable Boolean and other set operations, statistical calculations, archiving, conversion and other management of genomic data of arbitrary scale. Tasks can be easily split by chromosome for distributing whole-genome analyses across a computational cluster.")

help([[
bedops 2.4.39
-------------

Description
-----------
BEDOPS is an open-source command-line toolkit that performs highly efficient and scalable Boolean and other set operations, statistical calculations, archiving, conversion and other management of genomic data of arbitrary scale. Tasks can be easily split by chromosome for distributing whole-genome analyses across a computational cluster.

To load the module type

> module load bedops/2.4.39

To unload the module type

> module unload bedops/2.4.39

Documentation
-------------
https://bedops.readthedocs.io/en/latest/#

Repository
----------
https://github.com/bedops/bedops

Tools included in this module are

* bam2bed
* bam2starch
* bedextract
* bedmap
* bedops
* closest-features
* sort-bed
* starch
* starchcat
* starchstrip
* unstarch
]])

local package = "BEDOPS"
local version = "2.4.39"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
