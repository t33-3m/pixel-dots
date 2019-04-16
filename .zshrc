# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/tee/.oh-my-zsh"

# #Make ~/.bin folder easier to be executed from terminal
##
PATH=$PATH:~/.bin:~/.local/bin


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/powerlevel9k/powerlevel9k/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
#POWERLEVEL9K_MODE="nerdfont-complete"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source ~/.oh-my-zsh/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias fdisk="sudo fdisk"
mcc() {
	markdown $1 > out.html
}

pclip() {
    gopass show --clip $1
}

## alias for when I fuck up my sudo commands
alias pls='sudo $(fc -ln -1)'


## alias for unlocking and mounting an encrypted disk
unlock () {
	sudo cryptsetup luksOpen $1 LUKS001
	sudo mount /dev/mapper/LUKS001 /media/disk
}

lock () {
	sudo umount /media/disk
	sudo cryptsetup luksClose LUKS001
}

# always spawn oni as a background process - and rename it to code
onicode () {
    oni $1 &!
}

# for Mac style open command:
alias open='xdg-open'

# a helper for changing redshift
alias nmode='redshift -P -O 4200'
alias dmode='redshift -P -O 6500'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

setopt AUTO_CD # No cd needed to change directories
setopt BANG_HIST # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_DUPS # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_SPACE # Don't record an entry starting with a space.
setopt HIST_REDUCE_BLANKS # Remove superfluous blanks before recording entry.
setopt HIST_SAVE_NO_DUPS # Don't write duplicate entries in the history file.
setopt INC_APPEND_HISTORY # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY # Share history between all sessions.

#PS1='[\u@\h \W]\$ '
## Factorio
#alias factorio='/home/tee/FlashFiles/factorio/bin/x64/factorio'


## List
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias l.="ls -A | egrep '^\.'"

## Fix obvious typo's
alias cd..='cd ..'
alias sl="ls"
alias pdw="pwd"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## readable output
alias df='df -h'

## Run this after modifying .Xresources file
alias merge="xrdb -merge ~/.Xresources"

## Aliases for software managment
## pacman or pm
alias pmsyu="sudo pacman -Syu --color=auto"
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syu'


## generate a file containing installed package list
alias pkglist="pacman -Qqe >"
##    Q – Queries the package database. This option allows you to view installed packages and their files, other useful meta-information about individual packages (dependencies, conflicts, install date, build date, size).
##    q – Shows less information for certain query operations. This is useful when pacman’s output is processed in a script.
##    e – Lists explicitly installed packages that are not required by any other package.

## install all package in the generated package list
alias install-pkglist="sudo pacman -S - <"

## ls group directory first
alias lsf="ls --group-directories-first"

## A funny meme :D
##

alias love="echo '\e[31mShell: \e[34mLove not found'"
alias happines="echo '\e[31mShell: \e[33mHappines not found'"
alias peace="echo '\e[31mShell: \e[35mPeace not found'"
alias kill="echo '\e[32mShell: \e[31mYou need to specify whom to kill'"
alias kill-everyone="echo '\e[32mShell: \e[31mBut! Genocide is illegal Sir!!'"
#alias love="echo '\e[31mShell: \e[34mLove not found \uF08A \uF00D'"
#alias happines="echo '\e[31mShell: \e[33mHappines not found \uF119'"
#alias peace="echo '\e[31mShell: \e[35mPeace not found \uF0E3'"
#alias kill="echo '\e[32mShell: \e[31mYou need to specify whom to kill \uF05B'"
#alias kill-everyone="echo '\e[32mShell: \e[31mBut! Genocide is illegal Sir!! \uF05C'"
#alias love="echo '\e[31mShell: \e[34mLove not found \uF08A \uF00D' && echo ' '"
#alias happines="echo '\e[31mShell: \e[33mHappines not found \uF119' && echo ' '"
#alias peace="echo '\e[31mShell: \e[35mPeace not found \uF0E3' && echo ' '"
#alias kill="echo '\e[32mShell: \e[31mYou need to specify whom to kill \uF05B' && echo ' '"
#alias kill-everyone="echo '\e[32mShell: \e[31mBut! Genocide is illegal Sir!! \uF05C' && echo ' '"

## Start CAVA Visualizer with color config
##
alias cava-froly="cava -p ~/.config/cava/config-froly"
alias cava-crimson="cava -p ~/.config/cava/config-crimson"
alias cava-cyan="cava -p ~/.config/cava/config-cyan"
alias cava-blue="cava -p ~/.config/cava/config-blue"

## Neofetch for Urxvt with internal padding
alias neopad="neofetch --config /home/addy/.config/neofetch/config-padding"

## Neofetch with different distro logo color
##
alias neofetch-blue="neofetch --source .neofetch/al-blue.png --colors 4 4 4 4 4"
alias neofetch-crimson="neofetch --source .neofetch/al-crimson.png --colors 1 1 1 1 1"
alias neofetch-froly="neofetch --source .neofetch/al-froly.png --colors 9 9 9 9 9"
alias neofetch-lavender="neofetch --source .neofetch/al-lavender.png --colors 13 13 13 13 13"
alias neofetch-lime="neofetch --source .neofetch/al-lime.png --colors 2 2 2 2 2"
alias neofetch-orange="neofetch --source .neofetch/al-orange.png --colors 3 3 3 3 3"
alias neofetch-paper="neofetch --source .neofetch/al-paper.png --colors 7 7 7 7 7"
alias neofetch-violet="neofetch --source .neofetch/al-violet.png --colors 5 5 5 5 5"

## View and set wallpaper with feh
alias feh-view="feh --scale-down --auto-zoom"
alias feh-set="feh --bg-fill"
#alias feh-set="echo 'Wallpaper has been set for You, very nice choice :)' && feh --bg-fill"

## Refresh font cache
alias font-refresh="fc-cache -fv"

## Misc Aliases
# Like one for opening markdown in Firefox
mcc() {
	markdown $1 > .out.html && firefox .out.html &&	rm .out.html
}
# And one to show the monthly calendar
alias calm="gcalcli calm"
alias calw="gcalcli calw"
# And for my todo lists
alias vitodo="vim ~/.todo-list"
alias catodo="cat ~/.todo-list"
rmtodo() {
	sed -i "s/$(grep -E $1 ~/.todo-list)//g" ~/.todo-list
}

alias pysimpleserve='python -m http.server 4204'

## alias for BLINK RED TEXT
function blinkred() {
	echo "\e[5m\e[31m
RRRRRRRRRRRRRRRRR   EEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDD
R::::::::::::::::R  E::::::::::::::::::::ED::::::::::::DDD
R::::::RRRRRR:::::R E::::::::::::::::::::ED:::::::::::::::DD
RR:::::R     R:::::REE::::::EEEEEEEEE::::EDDD:::::DDDDD:::::D
  R::::R     R:::::R  E:::::E       EEEEEE  D:::::D    D:::::D
  R::::R     R:::::R  E:::::E               D:::::D     D:::::D
  R::::RRRRRR:::::R   E::::::EEEEEEEEEE     D:::::D     D:::::D
  R:::::::::::::RR    E:::::::::::::::E     D:::::D     D:::::D
  R::::RRRRRR:::::R   E:::::::::::::::E     D:::::D     D:::::D
  R::::R     R:::::R  E::::::EEEEEEEEEE     D:::::D     D:::::D
  R::::R     R:::::R  E:::::E               D:::::D     D:::::D
  R::::R     R:::::R  E:::::E       EEEEEE  D:::::D    D:::::D
RR:::::R     R:::::REE::::::EEEEEEEE:::::EDDD:::::DDDDD:::::D
R::::::R     R:::::RE::::::::::::::::::::ED:::::::::::::::DD
R::::::R     R:::::RE::::::::::::::::::::ED::::::::::::DDD
RRRRRRRR     RRRRRRREEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDD       "

}

function gogreen() {
	echo "\e[32m\
       GGGGGGGGGGGGGRRRRRRRRRRRRRRRRR   EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENNNNNNNN        NNNNNNNN
     GGG::::::::::::GR::::::::::::::::R  E::::::::::::::::::::EE::::::::::::::::::::EN:::::::N       N::::::N
   GG:::::::::::::::GR::::::RRRRRR:::::R E::::::::::::::::::::EE::::::::::::::::::::EN::::::::N      N::::::N
  G:::::GGGGGGGG::::GRR:::::R     R:::::REE::::::EEEEEEEEE::::EEE::::::EEEEEEEEE::::EN:::::::::N     N::::::N
 G:::::G       GGGGGG  R::::R     R:::::R  E:::::E       EEEEEE  E:::::E       EEEEEEN::::::::::N    N::::::N
G:::::G                R::::R     R:::::R  E:::::E               E:::::E             N:::::::::::N   N::::::N
G:::::G                R::::RRRRRR:::::R   E::::::EEEEEEEEEE     E::::::EEEEEEEEEE   N:::::::N::::N  N::::::N
G:::::G    GGGGGGGGGG  R:::::::::::::RR    E:::::::::::::::E     E:::::::::::::::E   N::::::N N::::N N::::::N
G:::::G    G::::::::G  R::::RRRRRR:::::R   E:::::::::::::::E     E:::::::::::::::E   N::::::N  N::::N:::::::N
G:::::G    GGGGG::::G  R::::R     R:::::R  E::::::EEEEEEEEEE     E::::::EEEEEEEEEE   N::::::N   N:::::::::::N
G:::::G        G::::G  R::::R     R:::::R  E:::::E               E:::::E             N::::::N    N::::::::::N
 G:::::G       G::::G  R::::R     R:::::R  E:::::E       EEEEEE  E:::::E       EEEEEEN::::::N     N:::::::::N
  G:::::GGGGGGGG::::GRR:::::R     R:::::REE::::::EEEEEEEE:::::EEE::::::EEEEEEEE:::::EN::::::N      N::::::::N
   GG:::::::::::::::GR::::::R     R:::::RE::::::::::::::::::::EE::::::::::::::::::::EN::::::N       N:::::::N
     GGG::::::GGG:::GR::::::R     R:::::RE::::::::::::::::::::EE::::::::::::::::::::EN::::::N        N::::::N
        GGGGGG   GGGGRRRRRRRR     RRRRRRREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENNNNNNNN         NNNNNNN"
}

function cht() {
	ORIG=$PS1
	TITLE="\e]2;\"$1\"\a"
	PS1=${ORIG}${TITLE}
}

## self-destruct
rm()
{
  if [ "$1" = "-rf/" ]
  then
    shift
    echo '' && echo 'Do a self destruct in 5.. 4.. 3.. 2.. 1..' && echo 'Just kidding :p' && echo '' && echo "Let's take a screenshot instead" && scrot -cd 5 "$@"
  else
    command rm "$@"
  fi
}
alias neofetch="neofetch --ascii /home/tee/Documents/ascii_arts/alien"

