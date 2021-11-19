# Pandoc Builder
This repository outlines a docker container for building pdfs from markdown using pandoc and plantuml

## Dependencies
To use this tool, you will need [Docker](https://docs.docker.com/get-docker/)

## Get Started
To use the tool, copy the `build.sh` script into your working directory, and run it with the name of the markdown file you wish to convert to a pdf

```bash
chmod +x build.sh
./build.sh <filename>
```

Note that the filename should not include the `.md` file extension

Additionally, for citations and a bibliography, you will need to have a `.bib` file in your working directory.
You can specify the bib file in the yaml preamble of your markdown document.

## Example

The `example.md` and `example.bib` file show and example markdown and bibliography files to be converted to pdf.

run:
```bash
./build.sh example
```

open example.pdf in a pdf reader to see the result

## Included Filters
The docker container uses [pandoc-plot](https://laurentrdc.github.io/pandoc-plot/) and pandoc-crossref(https://lierdakil.github.io/pandoc-crossref/) to generate plantuml figures and reference images, equations and tables in the text body. 
