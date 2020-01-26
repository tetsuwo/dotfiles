# .bashrc
echo "[INFO] .bashrc loading start"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -la'
alias grep='grep --color=auto'
alias rm='rm -iv'
alias mv='mv -iv'

echo "[INFO] .bashrc loading finished"
