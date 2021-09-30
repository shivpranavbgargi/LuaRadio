FROM ubuntu
RUN apt-get update && apt-get -y install luajit libluajit-5.1-dev libliquid-dev libfftw3-dev rtl-sdr librtlsdr-dev 
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install pkg-config 
WORKDIR /luaradio
