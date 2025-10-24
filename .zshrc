
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/larry/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Use vim keys in tab complete menu:
bindkey -v
export KEYTIMEOUT=1
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

autoload -U colors && colors
source ~/.zsh/zsh-git-prompt/zshrc.sh
# PS1="%B%{$fg[red]%}∲%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}%{$reset_color%}%b "
# PS1="%B%{$fg[red]%}%{$fg[magenta]%}%~%{$fg[red]%} »%{$reset_color%}%b "
setopt PROMPT_SUBST

# --- Your custom prompt ---
PS1='%B%{$fg[red]%}%{$fg[magenta]%}%~%{$fg[red]%} $(git_super_status) »%{$reset_color%}%b '


source /home/larry/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias vim=nvim
fastfetch
