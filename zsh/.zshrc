# .zshrc

# History configurations
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
#setopt share_history         # share command history data
setopt nomatch
#unsetopt autocd beep extendedglob notify

# force zsh to show the complete history
alias history="history 0"

bindkey -v

zstyle :compinstall filename '~/.zshrc'

# enable completion features
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

WORDCHARS=${WORDCHARS//\/} # Don't consider certain characters part of the word

# hide EOL sign ('%')
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
eval "$(zoxide init zsh)"
