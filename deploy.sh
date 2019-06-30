#!/bin/sh

echo "SSH-ing to server..."
ssh jatin@ccrma-gate.stanford.edu <<'ENDSSH'

cd Library/Web/about

rm cv.pdf
wget -O cv.pdf https://github.com/jatinchowdhury18/CV-Resume/raw/master/CV/cv.pdf

rm resume.pdf
wget -O resume.pdf https://github.com/jatinchowdhury18/CV-Resume/raw/master/Resume/resume.pdf

ENDSSH

echo "Deploy script completed."
