# .profile
# Setup only environment variables


##########################
# Common Settings
##########################
export ENV_SETUP_DONE=1
export PATH="/usr/local/bin:$PATH"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Instal library path
# TODO: switch by environment
export LIBRARY_PATH="$HOME/Library"

if [ -d "$HOME/work" ] ; then
    export WORK_DIR="$HOME/work"
elif [ -d "$HOME/Work" ] ; then
    export WORK_DIR="$HOME/Work"
fi


##########################
# Cocos2d-x
##########################
# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT="$LIBRARY_PATH/Cocos2d-x/cocos2d-x-3.17/tools/cocos2d-console/bin"
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT="$HOME/Library/Cocos2d-x/cocos2d-x-3.17/templates"
export PATH=$COCOS_TEMPLATES_ROOT:$PATH


##########################
# Java
##########################
export JENV_ROOT="$HOME/.jenv"
export PATH="$JENV_ROOT/bin:$PATH"

##########################
# Android
##########################
export ANDROID_LIB="$LIBRARY_PATH/Android"
export ANDROID_HOME="$ANDROID_LIB/sdk"
export ANDROID_SDK_ROOT="$ANDROID_LIB/sdk"
export ANDROID_NDK_HOME="$ANDROID_LIB/ndk-r12b"
export NDK_CCACHE="/usr/local/bin/ccache"
export NDK_ROOT="$ANDROID_LIB/Android/ndk-r12b"
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$NDK_ROOT


##########################
# Flutter
##########################
export FLUTTER_PATH="$LIBRARY_PATH/Flutter/flutter/bin"
export PATH=$PATH:$FLUTTER_PATH


##########################
# go lang
##########################
export GOPATH=$WORK_DIR/go
export PATH=$PATH:$GOPATH/bin
export GOENV_ROOT=$HOME/.goenv
export PATH=$PATH:$GOENV_ROOT/bin


##########################
# Python
##########################
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


##########################
# Rust
##########################
export PATH="$HOME/.cargo/bin:$PATH"


##########################
# JavaScript
##########################
## yarn
export PATH="$HOME/.yarn/bin:$PATH"

## nvm
export NVM_DIR="$HOME/.nvm"

##########################
# Deno
##########################
export DENO_INSTALL="/home/kz_morita/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
 

##########################
# XDG Base Directory Specification
#    https://wiki.archlinux.jp/index.php/XDG_Base_Directory_%E3%82%B5%E3%83%9D%E3%83%BC%E3%83%88
##########################
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

##########################
# Custom binary
##########################
export PATH="$HOME/.bin:$PATH"

