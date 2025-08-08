###########################################
# shell config
###########################################
autoload -Uz compinit promptinit run-help
(( ${+aliases[run-help]} )) && unalias run-help
alias help=run-help

# rm ~/.zcompdump*;
compinit -i
promptinit
prompt walters
zstyle ':completion:*' menu select # zstyle ':completion:*' rehash true


###########################################
# host specific actions
###########################################
# if [[ $HOST = "hostname" ]] ; do
#     host specific code
# fi


###########################################
# software & autorun 
###########################################
alias ll='eza --group-directories-first --icons -la'
alias ls='eza --group-directories-first'
alias l=ll
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -i'
alias cat=bat
alias lsblk='lsblk -fp'

alias n=nvim
alias g=git
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias ff=firefox
alias hh="pnpm hardhat"
alias lua="lua5.1"
alias luarocks="luarocks --lua-version=5.1"

alias pbcopy="wl-copy — clipboard — input"
alias pbpaste="wl-paste — clipboard — output"
# alias ssh=sshrc
# alias gt=convfmt # look quicktype,jyt,

alias aurctl="ssh aur@aur.archlinux.org"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


###########################################
# software config
###########################################
eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd j)"
eval "$(direnv hook zsh)"
eval "$(atuin init zsh)"

# source /opt/asdf-vm/asdf.sh
#source /usr/share/fzf/completion.zsh
#source /usr/share/autojump/autojump.zsh
#source /home/mr-papi/.config/broot/launcher/bash/br
