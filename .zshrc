# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/enrique/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git fedora virtualenv python anaconda pyenv colorize) 

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Power Level 9k custom
# POWERLEVEL9K_TIME_BACKGROUND='32'
# POWERLEVEL9K_TIME_FOREGROUND='0'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='009'

POWERLEVEL9K_DIR_HOME_BACKGROUND='009'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='196'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='232'

#POWERLEVEL9K_VCS_CLEAN_FOREGROUND='099'
POWERLEVEL9K_MODE='awesome-fontconfig'

#Icon config
POWERLEVEL9K_HOME_ICON='\UF20E'
POWERLEVEL9K_SUB_ICON='\UF07C'
POWERLEVEL9K_FOLDER_ICON='\UF07B'
#POWERLEVEL9K_STATUS_OK_ICON='\UF2B0'
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\UE0BC'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\UE0BA'

# Anaconda
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(anaconda battery)
POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER='>'
POWERLEVEL9K_ANACONDA_LEFT_DELIMITER='<'
POWERLEVEL9K_ANACONDA_BACKGROUND='24'
POWERLEVEL9K_ANACONDA_FOREGROUND='111'
# POWERLEVEL9K_ANACONDA_ICON=''

# Bateria
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='blue'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='20'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='46'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='235'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='178'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='235'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='88'
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='235'
POWERLEVEL9K_BATTERY_CHARGED_ICON='/UF240'
POWERLEVEL9K_BATTERY_LOW_ICON='/UF240'
POWERLEVEL9K_BATTERY_CHARGING_ICON='/UF1E6'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='195'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='009'
POWERLEVEL9K_BATTERY_ICON='\UF1E6'

#ZSH_THEME="agnoster"
#POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_MODE='awesome-patched'
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git fedora virtualenv python pyenv colorize) 

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Anaconda 4.2.0
export PATH="/home/enrique/anaconda2/bin:$PATH"

# GCC 6.X
export CC="/usr/bin/gcc"
export CXX="/usr/bin/g++"
# export LD="/usr/bin/gcc"
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/gcc/x86_64-redhat-linux/3.4.6

# GCC 4.9
# export CC="/usr/local/gcc/4.9.0/bin/gcc"
# export CXX="/usr/local/gcc/4.9.0/bin/g++"

# GCC 4.8
# export CC="/usr/local/gcc/4.8.0/bin/gcc"
# export CXX="/usr/local/gcc/4.8.0/bin/g++"

# GCC 3.4
# export CC="/usr/bin/gcc34"
# export CXX="/usr/bin/g++34"
#export LD="/usr/bin/gcc"
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/gcc/x86_64-redhat-linux/3.4.6

# MCNP executables
export PATH
PATH="/home/enrique/MCNP6/MCNP_CODE/bin:/home/enrique/anaconda2/bin:/home/enrique/anaconda2/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/enrique/.local/bin:/home/enrique/bin"

export DATAPATH
DATAPATH="/home/enrique/MCNP6/MCNP_DATA"

# CUDA-6.5 Data Path
# export PATH=$PATH:/usr/local/cuda-6.5/bin
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-6.5/lib64:/lib

# CUDA-8.0 Data Path
export PATH=$PATH:/usr/local/cuda-8.0/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-8.0/lib64:/lib

# Paraview
#export PATH="/home/enrique/ParaView-5.1.2-Qt4-OpenGL2-MPI-Linux-64bit/bin:$PATH"

# GEANT4 
export Geant4_DIR=/home/enrique/Geant4_2
export G4ABLADATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/G4ABLA3.0
export G4NEUTRONHPDATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/G4NDL4.5
export G4LEVELGAMMADATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/PhotonEvaporation3.2
export G4RADIOACTIVEDATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/RadioactiveDecay4.3.2
export G4SAIDXSDATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/G4SAIDDATA1.1
export G4NEUTRONXSDATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/G4NEUTRONXS1.4
export G4PIIDATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/G4PII1.3
export G4REALSURFACEDATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/RealSurface1.0
export G4LEDATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/G4EMLOW6.48
export G4ENSDFSTATEDATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/G4ENSDFSTATE1.2.3
export G4TENDLDATA=/home/enrique/Geant4_2/share/Geant4-10.2.2/data/G4TENDL1.0
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64:/lib

# Geth (Ethereum)
export PATH=$PATH:/home/enrique/Miners/Ethereum/Geth_1.5.7/


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
alias vised="zsh ./Vised"
alias cudaMiner="zsh ./CCminer"
alias vimfix="zsh ~/dos2unixloop"
