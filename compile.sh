#!/bin/bash

# This should compile *.tex file to *.pdf

input=$1
name="${input%.*}"
latex $input && dvips $name.dvi && ps2pdf $name.ps $name.pdf 
