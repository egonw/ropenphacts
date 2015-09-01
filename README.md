
# About

R client for the Open PHACTS platform.

# Copyright / License

Copyright (C) 2013-2015  Egon Willighagen

Licensed AGPL v3 for the package. It depends on the LGPL v2.1 or later ops4j
from http://github.com/egonw/ops4j/ and the Apache io, logging, and httpclient
commons libraries, which have Apache licenses.

# Install from R

    > install.packages("rJava") # if not present already
    > install.packages("devtools") # if not present already
    > library(devtools)
    > install_github("egonw/rrdf", subdir="rrdflibs") # if not present already
    > install_github("egonw/rrdf", subdir="rrdf") # if not present already
    > install_github("egonw/rrdf", subdir="ropenphactslibs")
    > install_github("egonw/rrdf", subdir="ropenphacts")

# Compile from source

    $ cd java
    $ groovy build.groovy
    $ cd ..
    $ R CMD build ropenphactslibs
    $ R CMD check --as-cran ropenphactslibs
    $ R CMD build ropebphacts
    $ R CMD check --as-cran ropenphacts
