#!/bin/bash


if [ $# -gt 0 ]; then
    FILE_NAME=$1
else
    FILE_NAME=thesis_draft
fi


pdflatex $FILE_NAME'.tex'
bibtex $FILE_NAME
pdflatex $FILE_NAME'.tex'
pdflatex $FILE_NAME'.tex'


rm $FILE_NAME'.aux'
rm $FILE_NAME'.bbl'
rm $FILE_NAME'.blg'
rm $FILE_NAME'.log'
rm $FILE_NAME'.run.xml'
rm $FILE_NAME'-blx.bib'
rm $FILE_NAME'.toc'
rm $FILE_NAME'.nav'
rm $FILE_NAME'.out'
rm $FILE_NAME'.snm'
