#####################################################################
### oh-my-zsh #######################################################
#####################################################################
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="cyberwolftv"

plugins=(git)
source $ZSH/oh-my-zsh.sh


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



#####################################################################
### Launch Apps #####################################################
#####################################################################
alias obsidian="~/Apps/Obsidian-0.15.9.AppImage && exit"
alias marktext="~/Apps/marktext-x86_64.AppImage && exit"
alias anon="~/Apps/tor-browser_de/start-tor-browser.desktop && exit"
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
