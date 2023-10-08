#/bin/bash

set -e # Exit immediately if a command exits with a non-zero status.

mkdir Data 
cd Data && wget http://www.cs.cmu.edu/~ark/personas/data/MovieSummaries.tar.gz
gzip -d MovieSummaries.tar.gz
tar -xf MovieSummaries.tar
mv -f MovieSummaries/* .
rm -rf MovieSummaries.tar MovieSummaries