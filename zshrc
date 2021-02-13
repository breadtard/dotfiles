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
alias ls='exa -la --color=always --icons'
alias py3=python3
alias py=python
alias chmx="chmod +x"
alias termacs='emacsclient -nw'
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
alias ytbest="youtube-dl --format bestaudio+bestvideo"
alias 0x0file="curl -F file=@'$1' http://0x0.st"
############################################
alias emacs="emacsclient -c"
alias vim="nvim"
############################################
alias nspawn='sudo systemd-nspawn'
alias paru-haram="cat /dev/urandom | head -n18 | cowsay && espeak 'paru haram!'" 
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist" 
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias party="mpv Music/* && curl parrot.live"
op() {
	echo "Go get 'em tiger!"
	su
}
alias chad="neofetch --w3m 😳/epic\ fox\ pfp\ OwO.png --size 300 | sed -e 's/Arch/FurryOS/g'"
alias w2x=waifu2x-ncnn-vulkan
