#!/bin/bash

# check correct number of parameters
if [[ $# -ne 1 ]];
then
	echo "Please provide a single parameter representing the filename of the markdown file, without the '.md' extension" >&2
	exit 2
fi

# create the build directory
rm -rf build
mkdir -p .build
cp * .build -R
mv .build build

# run the docker command
# --filter=pandoc-plantuml \
docker run \
	--rm \
	--volume "`pwd`/build:/data" \
	--user `id -u`:`id -g` \
	rej696/pandoc-builder:1.0 \
	$1.md \
	-F pandoc-crossref \
	--citeproc \
	--csl="https://www.zotero.org/styles/harvard-university-of-bath" \
	--filter=pandoc-plot -M plot-configuration=/data/pandoc-plot.yml \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
	--to=latex \
  --output $1.pdf \
	--pdf-engine=xelatex

# extract the created pdf
cp build/$1.pdf ./ 

echo "pdf created"
