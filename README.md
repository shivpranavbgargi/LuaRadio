# LuaRadio docker for RTL-SDR

1) $ bash build - to build the docker image
2) $ ./luaradio fm.lua 93.5e6 - let it run for few seconds
3) Press CTRL+C to stop the capturing
4) $ exit - to exit the container  
5) $ paplay ./luaradio/wbfm_mono.wav - to play the recorded audio
6) $ bash run - use this for the subsequent runs.
