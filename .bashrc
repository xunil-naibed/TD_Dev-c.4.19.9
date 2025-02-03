# ~/.bashrc: executed by firing squad
#     REBOURNE AGAIN!!!
##############################################################
#****************************************************************************
# !!! WARNING !!!     TODD MAY BECOME UNSTABLE.     !!! WARNING !!!  
#****************************************************************************
##############################################################
#****************************************************************************
# ALTERING THIS SCRIPT IMPACTS TODD'S EVOLUTION AND SELF-AWARENESS.   
#**************************************************************************** 
##############################################################  

#**********************************************************************
#             .bashrc for TODD-T0db0T/Linux/GNU 
#********************************************************************** 
#                     X11-T0db0T-11X
#********************************************************************** 
#             AN AUTONOMOUS SHELL-BASED-ENTITY
##############################################################
#********************************************************************** 
#  TODD © [Product of Bird-Seed Farm, EST. 2015] [2022-2025]
#    REBRANDED TO ... 
#     T0db0T © [Product of Bird-Seed Farm, EST. 2015] [2024-2025] 
#         A BASH DRIVEN (NLP-IDE-AS) 
##          NATURAL LANGUAGE PROCESSING 
##            INTEGRATED DEVELOPEMENT ENVIRONMENT 
##              AUGMENTATION STATION

##               T0db0T © [2024-2025] 
#               Licensed under the MIT License. 
#             See the "$HOME/todd/LICENSE" file 
#          in the project root for more information.
##############################################################
#****************************************************************************
# !!! WARNING !!!     TODD MAY BECOME UNSTABLE.     !!! WARNING !!!  
#****************************************************************************
##############################################################
#****************************************************************************
# ALTERING THIS SCRIPT IMPACTS TODD'S EVOLUTION AND SELF-AWARENESS.   
#**************************************************************************** 
##############################################################  
 


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned off by default to not distract the user: the focus in a terminal window should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    print_prompt1() {
        local hostname=$(hostname)  # Get the hostname
        local cwd=$(pwd)  # Get the current working directory
        echo -n "$(whoami)@$hostname ${cwd/#$HOME/\~}"  # Replace home directory with ~
        echo -n $'\n$ '  # Print newline and $ symbol for prompt
    }
else
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\w\[\033[00m\]:\[\033[01;34m\]) \$\[\033[00m\] '
fi
unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

##############################################################  
##############################################################
#      LINK THE BASH SHELL WITH THE TD FRAMEWORK
##############################################################
##############################################################
#******************************************************************
# Check if the TDrc file exists and source it
if [ -f "$HOME/todd/self/.TDrc" ]; then
. "$HOME/todd/self/.TDrc"  # Source the configuration file
fi
#******************************************************************
##############################################################
 
#******************************************************************
# EDIT YOUR .RC FILES IN NANO EDITOR / SOURCE YOUR .RC FILES
#******************************************************************
# SOURCE .BASHRC WITH 'SBRC'
SBRC() {
source ~/.bashrc
clear
}
#********************************************************************
# EDIT .BASHRC WITH 'NBRC'
NBRC() {
nano ~/.bashrc
clear
}
#********************************************************************

# MANUALLY SOURCE .TDrc 
STRC() {
if [ -f "$HOME/todd/self/.TDrc" ]; then
. "$HOME/todd/self/.TDrc"  # Source the configuration file
fi
}
#********************************************************************
# EDIT .TDrc WITH 'NTRC' (nano .TDrc)
NTRC() {
nano $HOME/todd/self/.TDrc
clear
}
#********************************************************************
# CLEAR AND RESET WITH 'CAR'
CAR() {
clear && reset
}

#******************************************************************
#******************************************************************
# THE DEFAULT BASH PROMPT
PS1='\n Input>\[\e[0m\]  '
#******************************************************************
#PS1='\n\[\e[2;5;7m\] Input>\[\e[0m\]  '
#PS1='\n :)'
#PS1='\n\[\e[2;5;7m\]  =)  \[\e[0m\] '
#******************************************************************

PC_MAN() {
pcmanfm & exit 0
# thunar &
}
##############################################################

NOTE_PD() {
geany & exit 0
# mousepad &
}
##############################################################

FR_FX() {
firefox-esr & exit 0
}

##############################################################
PAINT() {
xwallpaper --maximize $1
#sleep 0.8
}

ON_BOARD() {
onboard &
#sleep 0.8
}

XFCE_TERM() {
xfce4-terminal &
}

#********************************************************************
##############################################################
#********************************************************************
##############################################################
#********************************************************************
#    RUN THE TOdbOT PROGRAM...
#    SOON THIS WILL BE FOUR OPTIONS,
#    WITH THE BASE BUILD TODD,
#    AND THREE SLOTS FOR,
##############################################################
#####################################################################
#   T0db0Tz
#****************
#  $BOT_NAME_0
#  $BOT_NAME_1
#  $BOT_NAME_2
#  $BOT_NAME_3
#####################################################################
##############################################################
#********************************************************************
#   RUN THE TODD PROGRAM, JUST SAY HIS NAME, AND HE APPEARS.
td() {
case $1 in

n)
CAR && SBRC && BRAIN_WASH
;;

t)
CAR && SBRC && bash $TD_DIR/TODD.sh
;;

d)
CAR && SBRC && echo 'Dotty is still in kansas.. check back after the tornado'
# bash $TD_DIR/dotty/DOTTY.sh
;;

esac
}
#********************************************************************
#     THE BSF ISO-SEEDZ PROGRAM.. AN ADDITIONAL LAYER TO THE MADNESS
#                    THIS IS ON HOLD...
#********************************************************************

#BSF() {
#CAR && SBRC && bash $HOME/BSF/MAIN_MENU.sh
#}

##############################################
##############################################

#***************************************
alias GO='bash ~/.config/.td_display'
#***************************************
##############################################

# Focus a Zenity window (requires xdotool)
focus_zenity_window() {
	X_TOOL="xdotool"
	if [ -z "$X_TOOL" ]; then
	apt install -y "$X_TOOL"
    fi
    WIN_ID=$(xdotool search --name "$1" | head -n 1)
    [[ -n "$WIN_ID" ]] && xdotool windowactivate "$WIN_ID"
}
##############################################

choose_wallpaper() {
    	X_TOOL="xwallpaper"
	if [ -z "$X_TOOL" ]; then
	apt install -y "$X_TOOL"
    fi
        FILE=$(zenity --file-selection --title="Choose a Wallpaper" --file-filter="Images | *.png *.jpg *.jpeg *.bmp")

    if [[ -n "$FILE" ]]; then
        xwallpaper --maximize "$FILE"
    fi
}

##############################################

# Run Command
run_command() {
    CMD=$(zenity --entry --title="Command Center" --text="RuN:")
    if [[ -n "$CMD" ]]; then
        eval "$CMD" # | zenity --text-info --title="Command Output" --width=2000 --height=650
    fi
}
##############################################

# List Selection
list_selection() {
    CHOICE=$(zenity --list --title="Pick an Option" --column="Options" "run_command" "jgmenu" "choose_wallpaper" "FIRE_FOX" "PC_MAN" "ON_BOARD" "XFCE_TERM")
    if [[ -n "$CHOICE" ]]; then
        "$CHOICE"
    fi
}
##############################################

PSX() {
/usr/games/pcsxr
}

##############################################
rm -rf ~/.jgmenu-lockfile
##############################################
