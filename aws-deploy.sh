#!/bin/bash

set -e

rm -rf sphinx_ninja_theme
git clone git@github.com:ninjablocks/sphinx_ninja_theme.git
export PYTHONPATH=`pwd`/sphinx_ninja_theme

make html
s3cmd sync -P build/html/ s3://${BUCKET_NAME}
