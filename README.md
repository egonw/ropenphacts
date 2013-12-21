
# About

R client for the Open PHACTS platform.

# Copyright / License

Copyright (C) 2013  Egon Willighagen

Licensed AGPL v3 for the package. It depends on the LGPL v2.1 or later ops4j
from http://github.com/egonw/ops4j/ and the Apache io, logging, and httpclient
commons libraries.

# Install from R

    > install.packages(pkgs=c("ropenphactslibs", "ropenphacts"))

# Compile from source

    $ cd java
    $ groovy build.groovy
    $ cd ..
    $ R CMD check ropenphactslibs
    $ R CMD build ropenphactslibs
    $ R CMD check ropenphacts
    $ R CMD build ropebphacts


