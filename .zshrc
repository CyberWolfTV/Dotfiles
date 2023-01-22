#####################################################################
### oh-my-zsh #######################################################
#####################################################################
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="cyberwolftv"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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



###############################################################################
### Start of configurations ###################################################
###############################################################################


#####################################################################
### Hello ###########################################################
#####################################################################
neofetch --source ~/sources.bashrc/Neofetch/Custom_Ascii_Art | lolcat
echo ' '
echo "Welcome back, Timm!" | lolcat
echo "Today is:" | lolcat
date | lolcat
echo ' '


#####################################################################
### Variables #######################################################
#####################################################################
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64


#####################################################################
### Useful Aliases ##################################################
#####################################################################
# starwars in ascii art
alias starwars='telnet towel.blinkenlights.nl'

# switch directory fast + ls
alias doc="cd ~/Documents && ls -a"
alias dow="cd ~/Downloads && ls -a"

# get gpu temperature (nvidia)
alias gpu="nvidia-smi -q -d temperature"

# short stuff
alias s="sudo"
alias clone="git clone"
alias c="clear"
alias x='exit'

# privacy
alias smr="shred --iterations=0 -v -z "


#####################################################################
### Launch Apps #####################################################
#####################################################################
alias obsidian="~/Apps/Obsidian-0.15.9.AppImage && exit"
alias marktext="~/Apps/marktext-x86_64.AppImage && exit"
alias anon="cd Apps/tor-browser_de/ && ./start-tor-browser.desktop && exit"
alias tuxkart="~/Apps/SuperTuxKart-1.3-linux-64bit/run_game.sh && exit"
alias telegram="~/Apps/Telegram/Telegram && exit"
alias nightly="~/Apps/firefox/firefox && exit"


#####################################################################
### Music ###########################################################
#####################################################################
alias lofi="mplayer ~/Music/Music/Lofi/*.m4a"

# without cover-art and infinite loop
alias mplayer-loop="mplayer -vo null -loop 0"
# without cover-art
alias mplayer="mplayer -vo null"


#####################################################################
### Debian (-based distros) #########################################
#####################################################################
update(){
        sudo apt update | lolcat
        sudo apt full-upgrade | lolcat
        sudo apt autoremove | lolcat
        sudo apt autoclean | lolcat
}


#####################################################################
### Style ###########################################################
#####################################################################
alias neofetch='neofetch | lolcat'
alias screenfetch='screenfetch -w | lolcat'

# these 3 do somehow not work on every distro, vim doesnt
# work with lolcat on them
vimpro() {
        vim "$(pwd)/$1" | lolcat
}
nanopro() {
        nano "$(pwd)/$1" | lolcat
}
catpro() {
        cat "$(pwd)/$1" | lolcat
}


#####################################################################
### Scripts #########################################################
#####################################################################
alias dismod="python3 ~/Programming/2_Automation_and_Dotfiles/Uni/dismod"
alias linadi="python3 ~/Programming/2_Automation_and_Dotfiles/Uni/linadi"
alias epr="python3 ~/Programming/2_Automation_and_Dotfiles/Uni/epr"
alias gpr="python3 ~/Programming/2_Automation_and_Dotfiles/Uni/gpr"
alias topdf="~/Programming/2_Automation_and_Dotfiles/Uni/topdf"


#####################################################################
### Ramdisks ########################################################
#####################################################################
# $1 G big ramdisk in specified directory
tmpvm() {
	sudo mount -t tmpfs -o size="$1"G tmpfs ~/VirtualMachines/TempVMs
}
alias notmpvm="sudo umount ~/VirtualMachines/TempVMs"

# Clipboard for temporary files, e.g. downloaded archives or .deb
alias refresh-clipboard="sudo umount ~/Clipboard && sudo mount -t tmpfs -o size=2G tmpfs ~/Clipboard"



#####################################################################
### Very Specific Stuff #############################################
#####################################################################
# for tabgroups addon in firefox
clean() {
	cd ~/Downloads/STG-backups-FF-*
	mv auto-* ~/Documents/2_Privat/Browser/Firefox/Tabs/
	rm -r ~/Downloads/STG-backups-FF-*
}

# replaces tabs with 4 spaces in textfiles + creates a backup file first
antitab(){
	cp "$1" "$1.bak"	
	sed -i 's/	/    /g' $1
}

# backup keepass database
bak() {
    mv /media/timm/Verbatim/Passwd/* /media/timm/Verbatim/Passwd/.archive
    cp /home/timm/Documents/2_Privat/Passwd/* /media/timm/Verbatim/Passwd
}

# remove stuff noone should see
nuke(){
    # remove recent files, DEACTIVATED EM, SO NO NEED TO DELETE EM
    # shred --iterations=0 -v -z ~/.local/share/recently-used.xbel
    # rm ~/.local/share/recently-used.xbel
    
    # clear evince (pdfviewer) cache
    shred --iterations=0 -v -z ~/.local/share/gvfs-metadata/*
    rm -rf ~/.local/share/gvfs-metadata
}