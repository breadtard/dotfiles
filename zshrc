source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.emacs.d/bin:$PATH
setopt autocd beep
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
alias ls='exa -la --color=always'
alias py3=python3
alias py=python
alias chmx="chmod +x"
alias termacs='emacs -nw'
alias pcs='sudo pacman -S'
alias pcsyu='sudo pacman -Syu'
alias pcsi='pacman -Si'
alias pcss='pacman -Ss'
alias pcscc='sudo pacman -Scc'
alias pcrs='sudo pacman -Rs'
alias pcq='pacman -Q'
alias pcqo='pacman -Qo'
alias pcqi='pacman -Qi'
alias pcqs='pacman -Qs'
#paru haram
alias pr='paru' 
alias prs='paru -S' 
alias prsyu='paru -Syu'
alias prsi='paru -Si'
alias prss='paru -Ss'
alias prscc='paru -Scc'
alias prr='paru -R' # paru go prrrrrr
alias prrs='paru -Rs'
alias prq='paru -Q'
alias prqo='paru -Qo'
alias prqi='paru -Qi'
alias prqs='paru -Qs'
alias ytdl="youtube-dl --format mp4"
alias ytmp3="youtube-dl -x --audio-format mp3"
alias 0x0file="curl -F file=@'$1' http://0x0.st"
alias emacs="emacsclient -c"
alias nspawn='sudo systemd-nspawn'
alias paru-haram="cat /dev/urandom | head -n18 | cowsay && espeak 'paru haram!'" 
