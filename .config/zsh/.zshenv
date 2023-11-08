#####################################################################
# SYSTEM
#####################################################################
export EDITOR=/bin/nvim
export VISUAL=/bin/neovide
# export WINDOW_MANAGER=/bin/hyprland
export FILE_MANAGER="/bin/alacritty -e xplr"
export BROWSER=/bin/firefox
export TERM="xterm-256color"
export PAGER=/bin/less
export WALLPAPER=$HOME/Pictures/Wallpaper/space.png
# export XDG_CURRENT_DESKTOP="Hyprland"


#####################################################################
# PATH
#####################################################################
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/bin/go
export PATH=$PATH:~/.cargo/bin


#####################################################################
# xdg user dirs
#####################################################################
#export XDG_DESKTOP_DIR=$(xdg-user-dir DESKTOP)
#export XDG_DOWNLOAD_DIR=$(xdg-user-dir DOWNLOAD)
#export XDG_TEMPLATES_DIR=$(xdg-user-dir TEMPLATES)
#export XDG_PUBLICSHARE_DIR=$(xdg-user-dir PUBLICSHARE)
#export XDG_DOCUMENTS_DIR=$(xdg-user-dir DOCUMENTS)
#export XDG_MUSIC_DIR=$(xdg-user-dir MUSIC)
#export XDG_PICTURES_DIR=$(xdg-user-dir PICTURES)
#export XDG_VIDEOS_DIR=$(xdg-user-dir VIDEOS)
#export XDG_SOFTWARECODE_DIR$(xdg-user-dir SOFTWARECODE)


#####################################################################
# USER
#####################################################################
# export DISK=/run/media/$USER/elements
export KB="~/Knowledgebase"
export DISK="/run/media/$USER/Elements"
export REPOSITORY=$DISK/SoftwareCode/system/dotfiles
export AURLOCAL=$DISK/Software/aur-local/pkg
export AUR=ssh://aur@aur.archlinux.org
export SCRIPT=$DISK/SoftwareCode/system/scripts
export SYNC=$SCRIPT/sync


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
# if [[ $XDG_SESSION_TYPE = "wayland" ]] ; then
#     export MOZ_ENABLE_WAYLAND=1
# fi


#####################################################################
# RUST/CARGO
#####################################################################
# export RUSTC_WRAPPER=sccache cargo build
# CARGO_HOME
# CARGO_TARGET_DIR


#####################################################################
# FZF
#####################################################################
export FZF_DEFAULT_COMMAND=fd
export FZF_DEFAULT_OPTS='--layout=reverse --multi --extended --preview="bat {}" --cycle'
#export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'


#####################################################################
# PASS
#####################################################################
export PASSWORD_STORE_DIR=$HOME/.local/share/password-store/
export PASSWORD_STORE_ENABLE_EXTENSIONS=true


#####################################################################
# zoxide
#####################################################################
# export _ZO_FZF_OPTS=$FZF_DEFAULT_OPTS


#####################################################################
# pnpm
#####################################################################
export PNPM_HOME="/home/mr-papi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


#####################################################################
# telegram
#####################################################################
QT_QPA_PLATFORM="wayland"               # KDE wayland
QT_QPA_PLATFORMTHEME="xdgdesktopportal" # KDE file dialogs 
