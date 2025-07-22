#!/bin/bash

# save the ID of the session. We need this for pidx to find the shell.
echo $$ > "$HOME/.user_shell.pid"     # $$ is *this* Bash’s PID :contentReference[oaicite:0]{index=0}

# let's get out of the `tutorial` directory - can't figure out what puts me in there
# by default
cd

# source the bashrc so the settings take effect.
source .bashrc

# clear the screen so the reader doesn't see any of this junk
clear
