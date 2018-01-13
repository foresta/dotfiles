# user name
PS1='\W > '

cdls ()
{
    \cd "$@" && ls
}

# alias
alias ll='ls -l'
alias la='ls -al'
alias ls='ls -G --color=auto'
alias cd="cdls"

export PATH="/usr/local/bin:$PATH"

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT="$HOME/Library/Cocos2d-x/cocos2d-x-3.9/tools/cocos2d-console/bin"
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT="$HOME/Library/Cocos2d-x/cocos2d-x-3.9/templates"
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export ANDROID_NDK_HOME="$HOME/Library/Android/ndk-r12b"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"
export NDK_CCACHE="/usr/local/bin/ccache"
export NDK_ROOT="$HOME/Library/Android/ndk-r12b"
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$NDK_ROOT

# go lang
export PATH=$PATH:/opt/go/bin
export GOPATH=$HOME/Work/go
export PATH=$PATH:$GOPATH/bin

# bash auto completion
source $HOME/.git-completion.bash

# ruby
eval "$(rbenv init -)"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/k_morita/Library/google-cloud-sdk/path.bash.inc' ]; then source '/Users/k_morita/Library/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/k_morita/Library/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/k_morita/Library/google-cloud-sdk/completion.bash.inc'; fi
