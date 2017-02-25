#!/bin/sh
set -ex

cd src/
latexmk -pdf manual.tex
mv manual.pdf ../