FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    wget
RUN wget http://www.jsoftware.com/download/j901/install/j901_linux64.tar.gz && tar -xvf j901_linux64.tar.gz

CMD ["/bin/sh", "/j901/jconsole.sh"]
