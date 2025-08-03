#####################################################################
# SYSTEM
#####################################################################
export EDITOR=/bin/nvim
export VISUAL=/bin/neovide
export BROWSER=/bin/firefox
export TERM="xterm-256color"
export PAGER=/bin/less
QT_QPA_PLATFORMTHEME="xdgdesktopportal" # KDE file dialogs 


#####################################################################
# PATH
#####################################################################
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/bin/go
export PATH=$PATH:~/.cargo/bin


#####################################################################
# USER
#####################################################################
export KB="$HOME/Knowledgebase"
export DISK="/run/media/$USER/Elements"
export AFRUSMAKUSKAPUS=$DISK/Afrusmakuskapus
export REPOSITORY=$DISK/Software
export DOTFILES=$DISK/SoftwareCode/dotfiles
export SCRIPTS=$DISK/SoftwareCode/scripts
export AUR=ssh://aur@aur.archlinux.org


#####################################################################
# GITHUB
#####################################################################
export GH_HOST=github.com
export GH_USER=TheSnakeWitcher
export GH_EDITOR=$EDITOR
export GH_DOWNLOAD="https://raw.githubusercontent.com"


#####################################################################
# firefox
#####################################################################
export MOZ_ENABLE_WAYLAND=1


#####################################################################
# FZF
#####################################################################
export FZF_DEFAULT_COMMAND=fd
export FZF_DEFAULT_OPTS='--layout=reverse --multi --extended --preview="bat {}" --cycle'


#####################################################################
# PASS
#####################################################################
export PASSWORD_STORE_DIR=$HOME/.local/share/password-store
export PASSWORD_STORE_ENABLE_EXTENSIONS=true


#####################################################################
# zoxide
#####################################################################
# export _ZO_FZF_OPTS=$FZF_DEFAULT_OPTS


#####################################################################
# pnpm
#####################################################################
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
