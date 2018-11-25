# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

GPG_TTY=$(tty) # For KDEWallet

export PATH=$PATH:$HOME/ardupilot/Tools/autotest # For ardupilot
export PATH=$PATH:$(ruby -e 'print Gem.user_dir')/bin # For RubyGem executables

# This was added automatically by oh-my-zsh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"