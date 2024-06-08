#!/bin/bash
# Copy the dir command to a folder in the home directory called .scripts
echo "copying dir command script to $HOME/.scripts"
cp -r .scripts $HOME

# cat XPPROMPT into bashrc with warning
echo "This will add lines to your bashrc to make it look like the Windows command prompt"
read -p "Are you sure you want to do this? [Y/n] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cat BASH2CMDPROMPT >> ~/.bashrc
fi

# cat XPPROMPT into bashrc with warning
echo "This will add lines to your zshrc to make it look like the Windows command prompt"
read -p "Are you sure you want to do this? [Y/n] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cat BASH2CMDPROMPT >> ~/.zshrc
fi
