# user name
PS1='\W > '

cdls () {
    \cd "$@" && ls
}

existsCmd () {
    type -a $1 > /dev/null 2>&1
}

##
## alias
##
alias ll='ls -l'
alias la='ls -al'
alias ls='ls -G'
alias cd="cdls"


export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

##
## Language Settings
##

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT="$HOME/Library/Cocos2d-x/cocos2d-x-3.17/tools/cocos2d-console/bin"
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT="$HOME/Library/Cocos2d-x/cocos2d-x-3.17/templates"
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export JENV_ROOT="$HOME/.jenv"
export PATH="$JENV_ROOT/bin:$PATH"
if existsCmd jenv; then
    eval "$(jenv init -)"
else
    echo "jenv is not installed"
fi


# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export ANDROID_NDK_HOME="$HOME/Library/Android/ndk-r12b"
export NDK_CCACHE="/usr/local/bin/ccache"
export NDK_ROOT="$HOME/Library/Android/ndk-r12b"
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$NDK_ROOT

# Flutter
export FLUTTER_PATH="$HOME/Library/Flutter/flutter/bin"
export PATH=$PATH:$FLUTTER_PATH

# go lang
export GOPATH=$HOME/Work/go
export PATH=$PATH:$GOPATH/bin
export GOENV_ROOT=$HOME/.goenv
export PATH=$PATH:$GOENV_ROOT/bin

if existsCmd goenv; then 
    eval "$(goenv init -)"
else
    echo "goenv is not installed."
fi

# Ruby
if existsCmd rbenv; then
    eval "$(rbenv init -)"
else 
    echo "rbenv is not installed."
fi

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if existsCmd pyenv; then
    eval "$(pyenv init -)"
else
    echo "pyenv is not installed."
fi

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# JavaScript
## yarn
export PATH="$HOME/.yarn/bin:$PATH"

## nvm
export NVM_DIR="$HOME/.nvm"
if [ -f '/usr/local/opt/nvm/nvm.sh' ]; then
    . "/usr/local/opt/nvm/nvm.sh"
fi


##
## bash auto completion
##

export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
. "$HOME/.git-completion.bash"

if [ -f "$BASH_COMPLETION_COMPAT_DIR/git-flow-completion.bash" ]; then
    . "$BASH_COMPLETION_COMPAT_DIR/git-flow-completion.bash"
fi


##
## XDG Base Directory Specification
##    https://wiki.archlinux.jp/index.php/XDG_Base_Directory_%E3%82%B5%E3%83%9D%E3%83%BC%E3%83%88
##
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kazuki.morita/Library/GCloud/google-cloud-sdk/path.bash.inc' ]; then . '/Users/kazuki.morita/Library/GCloud/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kazuki.morita/Library/GCloud/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/kazuki.morita/Library/GCloud/google-cloud-sdk/completion.bash.inc'; fi
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
