FROM pandoc/ubuntu-latex:2.14

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y plantuml wget unzip tar xz-utils

RUN wget https://github.com/LaurentRDC/pandoc-plot/releases/download/1.3.0/pandoc-plot-Linux-x86_64.zip -O /data/temp.zip
RUN unzip /data/temp.zip -d /usr/bin && rm temp.zip
RUN chmod +x /usr/bin/pandoc-plot

RUN wget https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.12.1-pandoc-2.14/pandoc-crossref-Linux.tar.xz -O /data/temp.tar.xz
RUN tar -xf /data/temp.tar.xz -C /usr/bin && rm /data/temp.tar.xz
RUN chmod +x /usr/bin/pandoc-crossref

COPY pandoc-plot.yml /data/pandoc-plot.yml
