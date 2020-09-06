# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/breadboi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
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
