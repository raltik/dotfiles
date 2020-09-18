if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/raulf/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

source ~/.local/share/fonts/*.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh

source ~/.sources/aliases.zsh

source /etc/profile.d/bash_completion.sh

export PATH=$PATH:/home/raulf/.sources/bin
export PATH=$PATH:/usr/local/gcc-10.2.0/bin

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/gcc-10.2.0/lib64

source $ZSH/oh-my-zsh.sh

