####     ALIAS
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

alias nnsim="cd ~/upv/gap/nnsim"
alias peak8="ssh -X -p 3322 rauferpl@peak8.gap.upv.es"
alias peak6="ssh -X -p 3322 rauferpl@peak6.gap.upv.es"
alias kahan="ssh -X rauferpl@kahan.dsic.upv.es"

alias gts="git status"
alias gta="git add"
alias gtc="git commit"

alias vim="nvim"

alias dut="du -h --max-depth=1"
alias cp="cp -Rv"
alias rmf="rm -rf -v"
alias ll="ls -lah"

alias src="source ~/.zshrc"

####################################
####     PATH
export PATH=$PATH:/mod/.local/netcdf/bin
export PATH=$PATH:/opt/eclipse
export PATH=$PATH:/opt/jdk-1.8.0_212/bin
export PATH=$PATH:$HOME/.sources/grib2/wgrib2 # WGRIB2
export PATH=$PATH:$HOME/.sources/bin
export PATH=$PATH:/opt/gnat/bin
export PATH=$PATH:/opt/activemq/bin
####################################
####    VARIABLES
export NETCDF=/mod/.local/netcdf
export PYTHONDONTWRITEBYTECODE=1
export LM_LICENSE_FILE=2100@lic-xilinx.upv.es
export CC=gcc
