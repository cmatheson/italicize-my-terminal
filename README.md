# italicize-my-terminal.sh

This script makes italicized termcaps of xterm-256color and screen-256color.
Enjoy italics in your vim (and probably other places too?).

## Where does this work?

It works in gnome-terminal.  I think it will work in iterm too.  You can check
if your terminal supports italic text by running:

    echo -e "\e[3mhello\e[23m"

## Instructions

  1. Run `italicize-my-terminal.sh`
  2. Make your TERM be xterm-256color-italic (this may be done in your terminal
     preferences or your bashrc)

## Potential Issues

When you ssh to other machines, programs that rely on your terminfo will fail.
You need to either install the new terminfos on remote machines, or add
something like this to your bashrc:

    ssh() { TERM=${TERM%-italic} command ssh "$@"; }

It might be more convenient to just modify the existing termcaps directly
instead of making new ones.
