#!/bin/bash

set -e

# XTERM TERMCAP
XTERM=/tmp/xterm-256color.terminfo
infocmp xterm-256color | sed \
  -e 's/with 256 colors/with 256 colors and italic/' \
  -e '$a\\tsitm=\\E[3m, ritm=\\E[23m,' > $XTERM
tic $XTERM

# THIS WORKS FOR TMUX (NOT SURE ABOUT SCREEN)
# thanks http://sourceforge.net/p/tmux/tmux-code/ci/master/tree/FAQ
SCREEN=/tmp/screen-256color-italic.terminfo
infocmp screen-256color | sed \
    -e 's/^screen[^|]*|[^,]*,/screen-256color-italic|screen-256color with italic,/' \
    -e 's/%?%p1%t;3%/%?%p1%t;7%/' \
    -e 's/smso=[^,]*,/smso=\\E[7m,/' \
    -e 's/rmso=[^,]*,/rmso=\\E[27m,/' \
    -e '$s/$/ sitm=\\E[3m, ritm=\\E[23m,/' > $SCREEN
tic $SCREEN
echo 'set -g default-terminal "screen-256color-italic"' >> ~/.tmux.conf

# instructions
echo Don\'t forget to set your \$TERM to xterm-256color-italic !
