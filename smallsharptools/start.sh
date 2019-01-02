#!/bin/bash

# Create directory structure
mkdir /home/scrapbook/{Desktop,Documents,Downloads,Music,Pictures,Public,Templates,Videos}

# mod the prompt so it looks like a typical prompt.
echo "export PS1=\"\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\W\\$ \[$(tput sgr0)\]"\" >> /home/scrapbook/.bashrc

# let's get out of the `tutorial` directory - can't figure out what puts me in there
# by default
cd

# need the dictionary words because they're not installed.
# TODO: replace with a different example or upload the file rather than
# rely on 3rd party
curl https://raw.githubusercontent.com/eneko/data-repository/master/data/words.txt -o /usr/share/dict/words

# source the bashrc so the settings take effect.
source .bashrc

# clear the screen so the reader doesn't see any of this junk
clear
