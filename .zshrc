for rc in  {.dockerrc,.gitrc,.awsrc} 
do source ~/$rc;
done;

export CDPATH=CDPATH:~/:~/snap:/

## java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre

alias git=hub
alias ctl=systemctl
alias gt=gnome-terminal
alias ev=ebook-viewer
alias nu=nautilus
alias py=python
alias da=django-admin
alias dsp="da startproject"
alias dsa="dm startapp"
alias dmer="python manage.py"
alias dmm="dmer makemigrations"
alias dm="dmer migrate"
alias j=jettyrun
alias drs="dmer runserver"
alias dcs="dmer createsuperuser"
alias chrm=pycharm-community
alias .brc=.bashrc
alias .drc=.desktoprc
alias m=./mvnw
alias b=". ~/.bashrc"
alias .d=.desktop
alias pb=pdfbook
alias e=evince
alias jb=intellij-idea-community
alias jettyrun="java -jar $JETTY_HOME/start.jar"
alias j=jettyrun
alias jr="mvn package jetty:run"
alias c=clear


# If you come from bash you might have to change your $PATH.



# export PATH=$HOME/bin:/usr/local/bin:$

# Path to your oh-my-zsh installation.
export ZSH="/home/ali/.oh-my-zsh"

# Set name of the themeo load -



###-- if set to "random", it will

#load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME


# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(gitfast git-remote-branch gitignore github git-flow-avh  gem   colored-man-pages colorize cp dirhistory debian  aws docker nanoc  mongodb grails command-not-found)

source $ZSH/oh-my-zsh.sh

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

[[ -e ~/.bash_aliases ]] && emulate sh -c 'source ~/.bash_aliases'
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
alias .zsh="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
autoload -U compinit
compinit
setopt completeinword
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'

conda activate awsser

#

alias l=ls

alias -g L='| less'
alias -g G='| grep'
alias -g H='--help | less' 
alias -g S='>>~/'
alias -g T='| tee'
#ENDALIASES

alias mongo-log='cat /var/log/mongodb/mongod.log'
setopt extendedglob

source ~/.zplug/init.zsh

# Make sure to use double quotes
zplug "zsh-users/zsh-history-substring-search"

# Use the package as a command
# And accept glob patterns (e.g., brace, wildcard, ...)
zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"

# Can manage everything e.g., other person's zshrc
zplug "tcnksm/docker-alias", use:zshrc

# Disable updates using the "frozen" tag
zplug "k4rthik/git-cal", as:command, frozen:1

# Grab binaries from GitHub Releases
# and rename with the "rename-to:" tag
zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"

# Supports oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh

# Also prezto
zplug "modules/prompt", from:prezto

# Load if "if" tag returns true
#zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

# Run a command after a plugin is installed/updated
# Provided, it requires to set the variable like the following:
# ZPLUG_SUDO_PASSWORD="********"
zplug "jhawthorn/fzy", \
    as:command, \
    rename-to:fzy, \
    hook-build:"make && sudo make install"

# Supports checking out a specific branch/tag/commit
zplug "b4b4r07/enhancd", at:v1
zplug "mollifier/anyframe", at:4c23cb60

# Can manage gist file just like other packages
zplug "b4b4r07/79ee61f7c140c63d2786", \
    from:gist, \
    as:command, \
    use:get_last_pane_path.sh

# Support bitbucket
zplug "b4b4r07/hello_bitbucket", \
    from:bitbucket, \
    as:command, \
    use:"*.sh"

# Rename a command with the string captured with `use` tag
zplug "b4b4r07/httpstat", \
    as:command, \
    use:'(*).sh', \
    rename-to:'$1'

# Group dependencies
# Load "emoji-cli" if "jq" is installed in this example
zplug "stedolan/jq", \
    from:gh-r, \
    as:command, \
    rename-to:jq
zplug "b4b4r07/emoji-cli", \
    on:"stedolan/jq"
# Note: To specify the order in which packages should be loaded, use the defer
#       tag described in the next section

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Can manage local plugins
#zplug "~/.zsh", from:local

# Load theme file
zplug 'dracula/zsh', as:theme

zplug voronkovich/gitignore.plugin.zsh, use:zshrc, as:command

#( zplug "plugins/gradle",                   from:oh-my-zsh, if:"(( $+commands[gradle] ))"
#( zplug "plugins/grails",                   from:oh-my-zsh, if:"(( $+commands[grails] ))"



# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
#zplug load 

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# vi as default
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

source "$HOME/.sdkman/bin/sdkman-init.sh"

alias w='whoami'


#### Suffices
alias -s html='background chromium'
alias -s {pdf,PDF}='background evince'
alias -s {zip,ZIP}="unzip -l"
alias -s txt='less -rE'
alias -s md=typora
alias -s {zshrc,bashrc,profile,marks,gitignore,build,xml,txt,html,yml,yaml}='vi '
alias -s gradle='intellij-community'
#alias -s *='vi '


#alias backup='tar -cpzf ~/BACKUPS/`date +%Y-%m-%d`.tar.gz'
function  backup () {
tar -cpzf ~/BACKUPS/`date +%Y-%m-%d`.tar.gz $1
}
alias backups='cd ~/BACKUPS/'
alias tb='torbrowser-launcher'
alias z='source ~/.zshrc'

alias -g  android='"/run/user/1000/gvfs/mtp:host=%5Busb%3A003%2C007%5D/Internal storage/markdown"'


#fixme
#shopt -s histappend
#PROMPT_COMMAND="history -n; history -a"
#unset HISTFILESIZE
#HISTSIZE=2000

kvm() {
sudo chown -R ali:ali /dev/kvm
sudo chmod 755   /dev/kvm 
ll /dev/kvm
}

chz() {
sudo chown ali:ali ~/*rc
sudo chmod 0665 ~/*rc
sudo chown ali:ali ~/*marks
sudo chmod 0665 ~/*marks
}

#keyboard remap

# setxkbmap -option ctrl:swapcaps     # Swap Left Control and Caps Lock
#Left
setxkbmap -option ctrl:ralt_rctrl

#xmodmap -e " = btn shift+btn ?? alt+btn maybe-altgr-btn"

#xmodmap -e "keycode 67 = Insert Insert Insert F1 F1 " ##F1
#xmodmap -e "keycode 68 = Prior Prior Prior F2 F2" #F2
#xmodmap -e "keycode 69 = Next Next Next F3 F3" #F3 
#xmodmap -e "keycode 70 = Insert Insert Insert F4 F4" #F4

#xmodmap -e "keycode 71 = Down NoSymbol Down NoSymbol Down" #F5
#xmodmap -e "keycode 72 =p"#F6

#xmodmap -e "keycode 73 = Insert Insert Insert F7 F7" #F7
#xmodmap -e "keycode 74 = Up Up Up F8 F8" #F8
#xmodmap -e "keycode 75 = Down Down Down F9 F9" #F9
###xmodmap -e "keycode 76 = Left  Right Right F10 F10" #f10 

##xmodmap -e "keycode 95 = F4 F4 F4 F4 F4"  #F11
###xmodmap -e "keycode 96 = Right Right Right F12 F12" #F12


#xmodmap -e "keycode 94 = Shift_L NoSymbol Shift_L NoSymbol Shift_L" 

#xmodmap -e "keycode 114 = Control_R Control_R Control_R Control_R Control_R" # prior 'Right'
#xmodmap -e "keycode 105 = Right Right Right Right Right"     #prior 'Control_R'

xmodmap -e "keycode 114 =  Right Right Right Right Right" #FIXME maybe to-delete
# end keyboard remap


qr() {
sudo vi home/ali/DEVeloper/qr-nanoc/qr/content/qr.md
v}
#gsettings set org.gnome.desktop.interface gtk-key-theme "Emacs"
#gsettings set org.gnome.desktop.interface gtk-key-theme "Default"

alias ij='coproc intellij-idea-ultimate'
alias m='sudo emacs ~/.zshrc ~/README.md'
alias f='find . -name'

xmodmap ~/.Xmodmap #FIXME maybe not needed
alias gd='./gradlew '
alias -g cn='clean'
alias -g br='bootRun'
