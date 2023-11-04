###########################################
# shell config
###########################################
autoload -Uz compinit promptinit run-help
(( ${+aliases[run-help]} )) && unalias run-help
alias help=run-help

compinit -i
rm ~/.zcompdump*; compinit
promptinit
prompt walters
zstyle ':completion:*' menu select # zstyle ':completion:*' rehash true


###########################################
# software config
###########################################
# x graphic client
#[[ -f ~/.zshrc ]] && ~/.zshrc
#[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd j)"
eval "$(direnv hook zsh)"
eval "$(atuin init zsh)"
eval "$(luarocks path --lua-version 5.1)" # xplr
eval $(thefuck --alias)

#source /usr/share/fzf/completion.zsh
#source /usr/share/autojump/autojump.zsh
#source /home/mr-papi/.config/broot/launcher/bash/br


###########################################
# host specific actions
###########################################
# if [[ $HOST = "hostname" ]] ; do
#     host specific code
# fi


###########################################
# software & autorun 
###########################################
# neofetch --color_blocks off


source $ZDOTDIR/.zsh-aliases
source $ZDOTDIR/.zsh-functions
