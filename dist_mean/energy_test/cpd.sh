#!/bin/bash

tar -xzf R413.tar.gz
# (optional) if you have a set of packages (created in Part 1), untar them also
tar -xzf R_packages.tar.gz
export PATH=$PWD/R/bin:$PATH
export RHOME=$PWD/R
export R_LIBS=$PWD/packages

# run your script

Rscript -e 'install.packages(c("ecp","gSeg","tidyr"), repos="https://cloud.r-project.org")'
Rscript energy_test.R $1 $2

#Rscript parallel_permute.R $1
