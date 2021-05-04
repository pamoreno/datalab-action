#!/bin/sh -l

cd $GITHUB_WORKSPACE/labs/datalab
make $1 2>&1 | tee $1_result.log
echo "::set-output name=result::$(< $1_result.log)"
