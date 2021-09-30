# LuaRadio as docker image

### Record and listen to FM radio by following the steps below. 

- `$ bash build` - to build the docker image
- `$ ./luaradio fm.lua 93.5e6` - let it run for few seconds
- Press CTRL+C to stop the capturing
- `$ exit` - to exit the container  
- `$ paplay` ./luaradio/wbfm_mono.wav - to play the recorded audio
- `$ bash run` - use this for the subsequent runs.
