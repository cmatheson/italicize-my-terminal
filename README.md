# italicize-my-terminal.sh

This script makes italic text work in your terminal (and in tmux).  It does 
this by creating italicized termcaps of xterm-256color and screen-256color.
Enjoy italics in your vim (and probably other places too?).

## Where does this work?

It works in gnome-terminal.  I think it will work in iterm too.  You can check
if your terminal supports italic text by running:

    echo -e "\e[3mhello\e[23m"

## Instructions

Run `italicize-my-terminal.sh`
