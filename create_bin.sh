#!/bin/bash

# Check if the.bash_aliases file exist
if ! [ -f ~/.bash_aliases ]; then
				touch ~/.bash_aliases
fi
aliaseSymbols="__aliaseSymbols"
echo "alias bin='bash ~/.$aliaseSymbols/alias_Recycle_bin.sh'" >> ~/.bash_aliases

# Creates the file that contains the script and manuals for the recycleBin
if ! [ -d ~/.$aliaseSymbols ]; then
				mkdir ~/.$aliaseSymbols
fi

# Copy the file to create or update the script
cat alias_Recycle_bin.sh > ~/.$aliaseSymbols/alias_Recycle_bin.sh
cat man_Recycle_bin.sh > ~/.$aliaseSymbols/man_Recycle_bin.sh

# makes all the .sh file an executable
all_sh_files=$(ls | find -name "*.sh" | cut -c 3- | xargs echo)

for sh in $all_sh_files; do 
				chmod 755 $sh
done



