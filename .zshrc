#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
#      _    _                            _                   |
#     / \  | |__  _   _ _ __   __ _  ___| |__   __ _ _ __    |
#    / _ \ | '_ \| | | | '_ \ / _` |/ __| '_ \ / _` | '__|   |
#   / ___ \| |_) | |_| | | | | (_| | (__| | | | (_| | |      |
#  /_/   \_\_.__/ \__,_|_| |_|\__,_|\___|_| |_|\__,_|_|      |
#                                                            |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+~~~~~~+
#                                                     |
#   FILENAME : .zshrc                                 |
#   AUTHOR   : Abunachar ( Knight-Byte )              |
#   GITHUB   : https://www.github.com/knight-byte     |
#                                                     |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+

# P10k instant Prompt {{{
# 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#
# }}}
#----------------------------------------------------
# Oh-My-Zsh Configuration {{{
#
export ZSH="/home/abunachar/.oh-my-zsh"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="alanpeabody"
ZSH_THEME="powerlevel10k/powerlevel10k"
# }}}
#----------------------------------------------------
# case-sensitive completion {{{
# CASE_SENSITIVE="true"

# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# }}}
#----------------------------------------------------
# Autoupdate Configuration {{{
DISABLE_AUTO_UPDATE="true"

# automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# }}}
#----------------------------------------------------
# Styling terminal {{{
# if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# disable colors in ls.
# DISABLE_LS_COLORS="true"

# auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# command auto-correction.
# ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"


# DISABLE_UNTRACKED_FILES_DIRTY="true"

# command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# }}}
#----------------------------------------------------
# Plugins {{{
plugins=(
    git
    history-substring-search
    colored-man-pages
    #zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-z
)

source $ZSH/oh-my-zsh.sh
# }}}
#----------------------------------------------------
# User configuration {{{
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

# }}}
#----------------------------------------------------
# aliases {{
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias python3="python"
alias pip3="pip"
alias ls='ls --color=auto'
alias vi="nvim"
alias vim="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias ls='ls --color=auto'
#ranger change directory confiruration
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
PATH="$HOME/bin:$PATH" 
export EDITOR="nvim"
export _JAVA_AWT_WM_NONREPARENTING=1
# }}}
#----------------------------------------------------

# X--- END ---X
