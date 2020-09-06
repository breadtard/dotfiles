#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="[\[\e[31m\]\u\[\e[m\]@\[\e[34m\]\h\[\e[m\]:\[\e[32m\]\W\[\e[m\]]\\$ "
#pacman
alias pcs='sudo pacman -S'
alias pcsy='sudo pacman -Sy'
alias pcsyu='sudo pacman -Syu'
alias pcsi='pacman -Si'
alias pcss='pacman -Ss'
alias pcssq='pacman -Ssq'
alias pcsc='sudo pacman -Sc'
alias pcscc='sudo pacman -Scc'
alias pcr='sudo pacman -R'
alias pcrs='sudo pacman -Rs'
alias pcq='pacman -Q'
alias pcqi='pacman -Qi'
alias pcqs='pacman -Qs'
alias pcqqs='pacman -Qqs'
#yay
alias y='yay'
alias ys='yay -S'
alias ysy='yay -Sy'
alias ysyu='yay -Syu'
alias ysi='yay -Si'
alias yss='yay -Ss'
alias yssq='yay -Ssq'
alias ysc='yay -Sc'
alias yscc='yay -Scc'
alias yr='yay -R'
alias yrs='yay -Rs'
alias yq='yay -Q'
alias yqi='yay -Qi'
alias yqs='yay -Qs'
alias yqqs='yay -Qqs'
# nvim > vim > micro shut up
alias vim="nvim"
# SYU all the things!
alias allsyu="yay -Syu; sudo brl update; sudo apk update; sudo apk upgrade"
# apk aliases
alias apka="sudo apk add"
alias apkd="sudo apk del"
alias apkf="sudo apk fix"
alias apkud="sudo apk update"
alias apkug="sudo apk upgrade"
alias apkc="sudo apk cache"
alias apkif="apk info"
alias apkl="apk list"
alias apks="apk search"
alias apkd="sudo apk dot"
alias apkp="apk policy"
alias apkix="sudo apk index"
alias apkf="sudo apk fetch"
alias apkv="sudo apk verify"
alias apkm="sudo apk manifest"
# hehe PP hehehe 
alias pp='pkill picom'
export LC_ALL="C"
alias ls='exa -la --color=always'
