# user name
PS1='\W > '

cdls ()
{
    \cd "$@" && ls
}

# alias
alias ll='ls -l'
alias la='ls -al'
alias ls='ls -G'
alias cd="cdls"

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT="$HOME/Library/Cocos2d-x/cocos2d-x-3.9/tools/cocos2d-console/bin"
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT="$HOME/Library/Cocos2d-x/cocos2d-x-3.9/templates"
export PATH=$COCOS_TEMPLATES_ROOT:$PATH
