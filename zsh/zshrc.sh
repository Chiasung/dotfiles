# Vars
HISTFILE=~/.zsh_history
SAVEHIST=1000

# Custom cd
source ~/dotfiles/zsh/plugins/fixls.zsh

chpwd() ls

export PATH=$PATH:~/workspace/OpenBLAS:~/.emacs.d/plugins
autoload -U compinit && compinit





source ~/dotfiles/zsh/plugins/zsh-vi-mode.plugin.zsh
source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/env-vars.env
source ~/dotfiles/zsh/lockbook.sh
source ~/dotfiles/zsh/keybindings.sh



# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
	autoload -U down-line-or-beginning-search
	zle -N down-line-or-beginning-search
	bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
	autoload -U down-line-or-beginning-search
	zle -N down-line-or-beginning-search
	bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi


source ~/dotfiles/zsh/prompt.sh
source ~/.emacs.d/plugins/langchain.sh 
source /opt/ros/noetic/setup.zsh

alias gu="git fetch && git pull && git lfs fetch && git lfs pull && git submodule init && git submodule update --recursive"