export ZSH="/Users/pawan/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-completions
  vi-mode
)

autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"

# NVIM related settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
