# Path to your oh-my-zsh installation.
export ZSH="/Users/xiao/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# iTerm background set to 202020, cyan to 60c2ff
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

## Git config variables
_I_=' '
HASH="%C(green)%h%C(reset)"
AGE="%C(yellow)%ar%C(reset)"
AUTHOR="%C(bold blue)%an%C(reset)"
REFS="%C(bold red)%d%C(reset)"
COMMENT="%s"

FORMAT="$HASH$_I_$AGE$_I_$AUTHOR$_I_$REFS $COMMENT"

## ls aliases
alias ll='ls -al'

## Git aliases
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate --pretty="tformat:${FORMAT}"'
alias gla='git log --oneline --graph --decorate --all --pretty="tformat:${FORMAT}"'
alias gs='git status'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias node='unalias node ; unalias npm ; nvm use default ; node $@'
alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/xiao/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/xiao/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/xiao/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/xiao/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh

# Configure rbenv
eval "$(rbenv init -)"

## Proxy aliases
alias p='source $HOME/.xiao/proxy on'
alias np='source $HOME/.xiao/proxy off'
