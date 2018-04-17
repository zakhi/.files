source "$HOME/.zgen/zgen.zsh"

if ! zgen saved; then
  zgen oh-my-zsh

  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/git-prompt
  zgen oh-my-zsh plugins/common-aliases
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/colored-man-pages
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/docker-compose

  zgen load zsh-users/zsh-syntax-highlighting

  zgen load https://gist.github.com/4b12b20d901bf0d866f0783e4a72d651.git zakhi-short

  zgen save
fi

export EDITOR=vim
export PATH=$HOME/bin:$HOME/bin/docker:$PATH
unset RPROMPT
alias diff=colordiff

