#################
### oh-my-zsh ###
#################
# Path to your oh-my-zsh installation.
export ZSH="/Users/xiao/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# iTerm background set to 202020, cyan to 60c2ff
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh


###################
### zsh plugins ###
###################
# zsh syntax highlighting
if [ -f "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# zsh auto suggestion
if [ -f "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi


#####################
### XXenv configs ###
#####################
# pyenv configs
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if which pyenv-virtualenv-init > /dev/null; then
  eval "$(pyenv virtualenv-init -)";
fi

# Goenv configs
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"


################
### Homebrew ###
################
# Use homebrew installation than system installation such as git
export PATH="/usr/local/bin:${PATH}"

## fix https://github.com/pyenv/pyenv/issues/106
alias brew='env PATH=${PATH//$(pyenv root)\/shims:/} brew'


###########
### Git ###
###########
# Git config variables
_I_=' '
HASH="%C(green)%h%C(reset)"
AGE="%C(yellow)%ar%C(reset)"
AUTHOR="%C(bold blue)%an%C(reset)"
REFS="%C(bold red)%d%C(reset)"
COMMENT="%s"
FORMAT="$HASH$_I_$AGE$_I_$AUTHOR$_I_$REFS $COMMENT"


###############
### aliases ###
###############
# ls aliases
alias ll='ls -al'

# Git aliases
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate --pretty="tformat:${FORMAT}"'
alias gla='git log --oneline --graph --decorate --all --pretty="tformat:${FORMAT}"'
alias gs='git status'

# Ruby aliases
alias be='bundle exec'

# Proxy aliases
alias p='source $HOME/.xiao/proxy on'
alias np='source $HOME/.xiao/proxy off'


##################
### GCloud SDK ###
##################
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi


######################
### User specified ###
######################
# export GOPRIVATE=

