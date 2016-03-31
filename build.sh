#!/bin/bash

# Aquest script transforma documents markdown a html utilitzant pandoc 

for file in *.md
do 
	pandoc \
		--standalone \
		--from  markdown \
		--to html \
		--output  ${file%.md}.html \
		$file 
	xmllint --valid --noout ${file%.md}.html
done
