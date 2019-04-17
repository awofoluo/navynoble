FROM ubuntu:18.04
COPY largefile.txt .
RUN apt-get update
RUN chmod +w largefile.txt
RUN chmod +r largefile.txt

