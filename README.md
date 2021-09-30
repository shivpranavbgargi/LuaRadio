# LuaRadio as docker image

### Record and listen to FM radio with an RTL-SDR by following the steps below. 

1. `$ bash build` to build the docker image
2. `$ ./luaradio fm.lua <FM radio frequency>` to start capturing the FM radio
 - For example `$ ./luaradio fm.lua 93.5e6`
3. `CTRL+C` to stop the capturing
4. `$ exit` to exit the container  
5. `$ paplay ./luaradio/wbfm_mono.wav` to play the recording
6. `$ bash run` can be used for subsequent runs
