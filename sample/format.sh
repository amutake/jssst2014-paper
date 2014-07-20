#!/bin/sh

export TEXINPUTS=:.//
export BIBINPUTS=:.//
export BSTINPUTS=:.//

mkdir -p tmp
platex -shell-escape -output-directory=tmp sample
pbibtex tmp/sample
platex -shell-escape -output-directory=tmp sample
platex -shell-escape -output-directory=tmp sample
dvipdfmx tmp/sample
