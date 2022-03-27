# LuaRadio as a docker image

### Record and listen to FM radio with an RTL-SDR by following the steps below. 

1. `$ bash run.sh luaradio fm.lua <frequency_in_hz> <output_file_name>` to start the recording 
    
    ```bash
    bash run.sh luaradio fm.lua 93.5e6 test
    ```
    
2. `CTRL+C` to stop the recording
3. `bash run.sh paplay <output_file_name.wav>` to listen to the recording (e.g. `$ bash run.sh paplay test.wav`)
