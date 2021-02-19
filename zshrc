# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.emacs.d/bin:$HOME/opt/cross/bin:$PATH
setopt autocd beep
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#pacman
alias pcs='yas pacman -S'
alias pcsyu='yas pacman -Syu'
alias pcsi='pacman -Si'
alias pcss='pacman -Ss'
alias pcscc='yas pacman -Scc'
alias pcrs='yas pacman -Rs'
alias pcq='pacman -Q'
alias pcqo='pacman -Qo'
alias pcqi='pacman -Qi'
alias pcqs='pacman -Qs'

#paru haram
alias pr='paru' 
alias prs='paru -S --sudo yas'
alias prsyu='paru -Syu --sudo yas'
alias prsi='paru -Si'
alias prss='paru -Ss'
alias prscc='paru -Scc'
alias prr='paru -R --sudo yas' # paru go prrrrrr
alias prrs='paru -Rs --sudo yas'
alias prq='paru -Q'
alias prqo='paru -Qo'
alias prqi='paru -Qi'
alias prqs='paru -Qs'

# downloading stuff from yt
alias ytdl="youtube-dl --format mp4"
alias ytmp3="youtube-dl -x --audio-format mp3"
alias ytopus="youtube-dl -x --audio-format opus"
alias ytbest="youtube-dl --format bestvideo+bestaudio"

# 0x0
alias 0x0file="curl -F file=@'$1' http://0x0.st"

# text editors
alias emacs="emacsclient -c"
alias vim="nvim"
alias termacs='emacsclient -nw'

# misc
alias ls='exa -la --color=always --icons'
alias nspawn='yas systemd-nspawn'
alias paru-haram="cat /dev/urandom | head -n18 | cowsay && espeak 'paru haram!'" 
alias sudo=yas
alias py3=python3
alias py=python
alias chad="neofetch --w3m 😳/epic\ fox\ pfp\ OwO.png --size 300 | sed -e 's/Arch/FurryOS/g'"
alias w2x=waifu2x-ncnn-vulkan
# mirrors
alias mirror="yas reflector -c poland -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="yas reflector -c poland --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="yas reflector -c poland --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="yas reflector -c poland --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# usage: ex <file>

ex() {
	if [ -f $1 ] ; then
		case $in in
			*.tar.bz2)   tar xjf $1   ;;
 		     *.tar.gz)    tar xzf $1   ;;
 		     *.bz2)       bunzip2 $1   ;;
 		     *.rar)       unrar x $1   ;;
 		     *.gz)        gunzip $1    ;;
 		     *.tar)       tar xf $1    ;;
 		     *.tbz2)      tar xjf $1   ;;
      	             *.tgz)       tar xzf $1   ;;
		     *.zip)       unzip $1     ;;
    		     *.Z)         uncompress $1;;
  		     *.7z)        7z x $1      ;;
		     *.deb)       ar x $1      ;;
		     *.tar.xz)    tar xf $1    ;;
		     *.tar.zst)   unzstd $1    ;;      
		     *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

op() {
	echo "Go get 'em tiger!"
	su
}

ffmpeg-interpolate() {
	ffmpeg -hwaccel cuda -i $1 -vf "minterpolate=fps=25:mi_mode=mci:mc_mode=aobmc:me_mode=bidir:vsbmc=1" -threads 8 $2
}
