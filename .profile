# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# rc attachers


# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

function ld() {
    cd "$@" && ls
}
export PATH=$PATH:/opt/go/bin
		 

#>>> conda initialize >>>
		# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ali/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ali/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ali/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ali/anaconda3/bin:$PATH"
    fi
unset __conda_setup
fi
# <<< conda initialize <<<
conda activate awsser



galias () {
	echo "alias $1" >> ~/.bash_aliases; 
	source  ~/.bash_aliases;
}


cdchrm () {
cd ~/snap/pycharm-community/
ls -a
}

cdcode(){
cd ~/snap/code/
ls -a
}


cgedit(){
coproc gedit "$@"
}

crc(){
cgedit ~/.config/Code/User/settings.json
}

.bashrc(){
edit ~/.bashrc  && source ~/.bashrc
}


lsb(){
ls ~{+,-}
}

mkdirl () {
mkdir "$@";
ls;
}
	
cdl(){
cd "$@"
ls
}

dirsi(){
for project in {projects-on-django,projects-on-spring,projects-on-vaadin,wordFreq/word-freq-app,thinkLikePythonv2} 
do  pushd ~/Developer/$project
done 
pushd /etc
cd
clear
dirs
}

lc(){
declare -x LC_ADDRESS="en_CA.UTF-8"
declare -x LC_ALL="en_US.UTF-8"
declare -x LC_IDENTIFICATION="en_CA.UTF-8"
declare -x LC_MEASUREMENT="en_CA.UTF-8"
declare -x LC_MONETARY="en_CA.UTF-8"
declare -x LC_NAME="en_CA.UTF-8"
declare -x LC_NUMERIC="en_CA.UTF-8"
declare -x LC_PAPER="en_CA.UTF-8"
declare -x LC_TELEPHONE="en_CA.UTF-8"
declare -x LC_TIME="en_CA.UTF-8"
}

d(){
mkdir $@;
cd $@;
}


export JETTY_HOME=/opt/jettyHome 
export JETTY_BASE=/tmp/aliBase
export JH=$JETTY_HOME
export JB=$JETTY_BASE

export JBW=$JETTY_BASE/webapps
export JETTY_HOME=/opt/jettyHome 

export BACKUPS="/var/backups/precious"
backup(){
tar czf  "$BACKUP/$*.tgz" "$@";
}
ip(){
 dig +short myip.opendns.com @resolver1.opendns.com
}
export ami=i-035023330204fc284





.desktop(){
coproc nautilus /usr/share/applications
}


alias .d='.desktop'

alias su='sudo -s'
export GIT_CEILING_DIRECTORIES=$HOME


  
export PLUGINS="/home/ali/.oh-my-zsh/plugins"

plugins(){
	cd $PLUGINS;	
}

alias pl='plugins'

# rc openers
changerc(){
	vi ~/$1 && source ~/$1;
}

chrc=changerc

profile(){
vi ~/.profile && source ~/.profile;
}

alias pr="profile";

dockerrc (){
	vi ~/.dockerrc && source ~/.dockerrc;
}

alias drc=dockerrc

# rc executors
alias src="source"
alias spr="source ~/.profile"
alias sd="source ~/.dockerrc"


export PEM="/home/ali/.aws/ec2dy-eu-v0.2.pem"
export ELASTICIP="ec2-user@ec2-35-156-49-229.eu-central-1.compute.amazonaws.com"

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
if [ -e /home/ali/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ali/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
