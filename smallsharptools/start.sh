#!/bin/bash
cd
mkdir Desktop Documents Downloads Music Pictures Public Templates Videos;
echo "export PS1=\"\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\W\\$ \[$(tput sgr0)\]"\" >> ~/.bashrc
