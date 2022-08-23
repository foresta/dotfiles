# .bash_profile
if [ -f ~/.profile ]; then 
    . ~/.profile
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
. "$HOME/.cargo/env"
