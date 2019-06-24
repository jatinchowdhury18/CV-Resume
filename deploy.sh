#!/bin/sh

echo "SSH-ing to server..."
ssh jatin@ccrma-gate.stanford.edu <<'ENDSSH'

cd Library/Web/about

rm cv.pdf
wget -O cv.pdf https://github.com/jatinchowdhury18/CV-Resume/raw/master/CV/cv.pdf

ENDSSH

echo "Deploy script completed."
