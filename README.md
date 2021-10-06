# LuaRadio as a docker image

### Record and listen to FM radio with an RTL-SDR by following the steps below. 

- `$ bash lua.sh luaradio fm.lua <frequency_in_hz> <output_file_name>` to start the recording (e.g. `$ bash lua.sh luaradio fm.lua 93.5e6 test`)
- `CTRL+C` to stop the recording
- `bash lua.sh paplay <output_file_name.wav>` to listen to the recording (e.g. `$ bash lua.sh paplay test.wav`)
