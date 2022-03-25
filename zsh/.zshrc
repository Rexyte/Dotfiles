# .zshrc

# Created by newuser for 5.8
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pyro/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Hide EOL sign
PROMPT_EOL_MARK=""

source $HOME/.config/zshrc.d/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zshrc.d/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

for file in $HOME/.config/zshrc.d/*; do
	if [ ! -d $file ]; then
		source $file
	fi
done
unset file

# add_plugin "zsh-users/zsh-syntax-highlighting"
# add_plugin "zsh-users/zsh-autosuggestions"

#source $HOME/.config/zsh/aliases
#source $HOME/.config/zsh/path
#source $HOME/.config/zsh/zsh_highlight
#source $HOME/.config/zsh/bindkeys
export TMPDIR=$HOME/tmp
eval "$(starship init zsh)"
