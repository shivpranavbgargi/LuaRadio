#!/bin/bash 

case $1 in

"")
  echo "1. $ bash lua build - to build the docker image
2. $ bash lua run - to run the docker container"
 ;;

"build")
  git clone https://github.com/vsergeev/luaradio.git
  
  echo "local radio = require('radio')

if #arg < 2 then
    io.stderr:write(\"Usage: \" .. arg[0] .. \" <FM radio frequency> <Output file name>\n\")
    os.exit(1)
end

local frequency = tonumber(arg[1])
local tune_offset = -250e3
local name = arg[2]

-- Blocks
local source = radio.RtlSdrSource(frequency + tune_offset, 1102500)
local tuner = radio.TunerBlock(tune_offset, 200e3, 5)
local fm_demod = radio.FrequencyDiscriminatorBlock(1.25)
local af_filter = radio.LowpassFilterBlock(128, 15e3)
local af_deemphasis = radio.FMDeemphasisFilterBlock(75e-6)
local af_downsampler = radio.DownsamplerBlock(5)
local sink = radio.WAVFileSink(string.format('%s.wav',name), 1)


-- Connections
local top = radio.CompositeBlock()
top:connect(source, tuner, fm_demod, af_filter, af_deemphasis, af_downsampler, sink)

top:run()" > ./luaradio/fm.lua

  echo "FROM debian:stable-slim
RUN apt-get update && apt-get -y install luajit libliquid-dev libfftw3-dev rtl-sdr librtlsdr-dev 
WORKDIR /luaradio
 " > Dockerfile
 sudo docker build -t lua .
 ;;

"run")
 sudo docker run -ti --rm --privileged -v /dev/bus/usb:/dev/bus/usb -v ${PWD}/luaradio:/luaradio lua 
 ;;
esac
