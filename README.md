# LuaRadio as a docker image

### Record and listen to FM radio with an RTL-SDR by following the steps below. 

- `$ bash lua build` to build the docker image
- `$ bash lua run` to run the docker container
- `$ ./luaradio fm.lua <FM radio frequency> <Output file name>` to start capturing the FM radio
- `CTRL+C` to stop the capturing
- `$ exit` and exit the container
- The recorded file can be found inside ./luaradio 
