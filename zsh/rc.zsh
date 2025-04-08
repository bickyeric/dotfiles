source_if_exists () {
  if test -r "$1"; then
    source $1
  fi
}

source_if_exists $HOME/.env.sh
source_if_exists $DOTFILES/zsh/oh-my.zsh
source_if_exists $DOTFILES/zsh/aliases.zsh

source_if_exists $HOME/.zshrc.local
