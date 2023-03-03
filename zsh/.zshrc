# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Fig pre block. Keep at the top of this file.

# # Enable Powerlevel10k instant prompt. Should stay close to the top of $HOME/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    # Starship prompt
    # eval "$(starship init zsh)"

    # Powerlevel10k prompt. To customize prompt, run `p10k configure` or edit $HOME/.p10k.zsh.
    ZSH_THEME="powerlevel10k/powerlevel10k"
    [[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh
else
    # Starship prompt
    eval "$(starship init zsh)"

    # ZSH_THEME="norm"
    # ZSH_THEME="robbyrussell"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Bindkeys
# bindkey '^[[2$HOME' overwrite-mode
# bindkey '^[[3$HOME' delete-char
# bindkey '^[[H' beginning-of-line
# bindkey '^[[1$HOME' beginning-of-line
# bindkey '^[[F' end-of-line
# bindkey '^[[4$HOME' end-of-line
# bindkey '^[[1;5C' forward-word
# bindkey '^[[1;5D' backward-word
# bindkey '^[[3;5$HOME' kill-word
# bindkey '^[[5$HOME' beginning-of-buffer-or-history
# bindkey '^[[6$HOME' end-of-buffer-or-history

# History
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  ag
  aliases
  brew
  copypath
  copyfile
  colors
  colorize
  colored-man-pages
  command-not-found
  common-aliases
  docker
  enhancd
#  fig
#  fzf
  forgit
  gh
  golang
  gradle
  gradle-completion
  httpie
  mvn
  macos
  rvm
  nice-exit-code
  npm
  spring
  thefuck
  z
  zsh_codex
  you-should-use
  zsh-completions
  zsh-autosuggestions
  fast-syntax-highlighting
#   zsh-syntax-highlighting
)

# Add ZSH Completions
fpath+=${ZSH_CUSTOM:-${ZSH:-$HOME/.oh-my-zsh}/custom}/plugins/zsh-completions/src

## Sourcing
# Main OMZ
source $ZSH/oh-my-zsh.sh

# Linuxify
. $HOME/.linuxify

# GCloud completions
if [ -f '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc' ]; then
    source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
    source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
fi

# EnhanCD
if [ -f '${ZSH_CUSTOM:-${ZSH:-$HOME/.oh-my-zsh}/custom}/plugins/enhancd/init.sh' ]; then
    source "${ZSH_CUSTOM:-${ZSH:-$HOME/.oh-my-zsh}/custom}/plugins/enhancd/init.sh"
fi

# Z
if [ -f '/opt/homebrew/etc/profile.d/z.sh' ]; then
    source "/opt/homebrew/etc/profile.d/z.sh"
fi

# Forgit
[ -f $HOME/.oh-my-zsh/custom/plugins/forgit/forgit.plugin.zsh ] && source $HOME/.oh-my-zsh/custom/plugins/forgit/forgit.plugin.zsh

# Completions Init
zle -N create_completion
autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/hashicorp/bin/vault vault

## User configuration

eval "$(dircolors -b)"

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Fix Warp + iTerm2
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
fi

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch $(uname -m)"

# Git graphical log
# glog() {
#     setterm -linewrap off

#     git --no-pager log --all --color=always --graph --abbrev-commit --decorate \
#         --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' | \
#         sed -E \
#             -e 's/\|(\x1b\[[0-9;]*m)+\\(\x1b\[[0-9;]*m)+ /├\1─╮\2/' \
#             -e 's/(\x1b\[[0-9;]+m)\|\x1b\[m\1\/\x1b\[m /\1├─╯\x1b\[m/' \
#             -e 's/\|(\x1b\[[0-9;]*m)+\\(\x1b\[[0-9;]*m)+/├\1╮\2/' \
#             -e 's/(\x1b\[[0-9;]+m)\|\x1b\[m\1\/\x1b\[m/\1├╯\x1b\[m/' \
#             -e 's/╮(\x1b\[[0-9;]*m)+\\/╮\1╰╮/' \
#             -e 's/╯(\x1b\[[0-9;]*m)+\//╯\1╭╯/' \
#             -e 's/(\||\\)\x1b\[m   (\x1b\[[0-9;]*m)/╰╮\2/' \
#             -e 's/(\x1b\[[0-9;]*m)\\/\1╮/g' \
#             -e 's/(\x1b\[[0-9;]*m)\//\1╯/g' \
#             -e 's/^\*|(\x1b\[m )\*/\1⎬/g' \
#             -e 's/(\x1b\[[0-9;]*m)\|/\1│/g' \
#         | command less -r +'/[^/]HEAD'

#     setterm -linewrap on
# }

# Find
find() {
    if [ $# = 1 ]
    then
        command find . -iname "*$@*"
    else
        command find "$@"
    fi
}

#Docker
set DOCKER_HOST=unix://

## Exports

# Less / They are ignored for some reason
# export LESS_TERMCAP_mb=$'\e[1;32m'
# export LESS_TERMCAP_md=$'\e[1;32m'
# export LESS_TERMCAP_me=$'\e[0m'
# export LESS_TERMCAP_se=$'\e[0m'
# export LESS_TERMCAP_so=$'\e[01;33m'
# export LESS_TERMCAP_ue=$'\e[0m'
# export LESS_TERMCAP_us=$'\e[1;4;31m'

# Colorize Tool
export ZSH_COLORIZE_TOOL=chroma

# Pager
# export PAGER=bat

### "bat" as manpager
export BAT_THEME="Monokai Extended Bright"
export MANPAGER="sh -c 'col -bx | bat -f -l man -p'"

# TLS
export GUILE_TLS_CERTIFICATE_DIRECTORY=/opt/homebrew/etc/gnutls/

# Starship
export STARSHIP_CONFIG=$HOME/.config/starship.toml

# Vault
export VAULT_CONFIG=$HOME/.vaultconfig/vault.hcl
export VAULT_API_ADDR=http://127.0.0.1:8200
export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_LICENSE_PATH=$HOME/.vaultconfig/vault.hclic

# AWS SSH Key
export AWS_SSH_KEY_C1="$HOME/.ssh/vault-c1.pem"
export AWS_SSH_KEY_C2="$HOME/.ssh/vault-c2.pem"

# AWS cluster addresses
export VAULT_C1_N1="ec2-54-210-34-125.compute-1.amazonaws.com"
export VAULT_C1_N2="ec2-54-236-8-92.compute-1.amazonaws.com"
export VAULT_C1_N3="ec2-35-153-193-251.compute-1.amazonaws.com"

export VAULT_C2_N1="ec2-35-177-179-139.eu-west-2.compute.amazonaws.com"
export VAULT_C2_N2="ec2-18-170-120-113.eu-west-2.compute.amazonaws.com"
export VAULT_C2_N3="ec2-18-168-154-170.eu-west-2.compute.amazonaws.com"

# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# ZSH
alias zshrc='vim $HOME/.zshrc'
alias sz="source $HOME/.zshrc"
alias ohmyzsh='vim $HOME/.oh-my-zsh'

# EXA
alias l='exa -lbF --git'                                                        # list, size, type, git
alias ls='exa --icons --group-directories-first'                                # ls with icons
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'           # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'          # all + extended list
alias lS='exa -1'			                                                          # one column, just names
alias lt='exa --tree --level=2'                                                 # tree
alias ll='exa -lbGF --icons --group-directories-first --git'                    # long list
alias lla='exa --icons --group-directories-first -l -a'
alias llm='exa -lbGF --git --sort=modified'                                     # long list, modified date sort
alias llax='exa --icons --group-directories-first -l -a -@'
alias lrt='\ls -1Fcrt'

# CAT
# alias cat="bat -f --theme='Monokai Extended Bright'"
alias bat="bat -f --theme='Monokai Extended Bright'"

# VIM
# alias gvim='vim'
alias nvim="CC=/opt/homebrew/bin/gcc-12 nvim"
# alias vim='nvim'

# Python
alias python="python3.10"
alias pip="pip3.10"

# Diff
alias diff='diff --color=auto'

# Goto
alias g="goto"

# Vault
alias vou="vault operator unseal"

# Other
alias myip="curl http://ipecho.net/plain; echo"
alias matrix='unimatrix -abf -l m -s 98'

# AWS Vault clusters
alias vault-c1-n1="ssh -i $AWS_SSH_KEY_C1 ubuntu@$VAULT_C1_N1"
alias vault-c1-n2="ssh -i $AWS_SSH_KEY_C1 ubuntu@$VAULT_C1_N2"
alias vault-c1-n3="ssh -i $AWS_SSH_KEY_C1 ubuntu@$VAULT_C1_N3"
alias vault-c1-n4="ssh -i $AWS_SSH_KEY_C1 ubuntu@$VAULT_C1_N4"

alias vault-c2-n1="ssh -i $AWS_SSH_KEY_C2 ubuntu@$VAULT_C2_N1"
alias vault-c2-n2="ssh -i $AWS_SSH_KEY_C2 ubuntu@$VAULT_C2_N2"
alias vault-c2-n3="ssh -i $AWS_SSH_KEY_C2 ubuntu@$VAULT_C2_N3"

### End Aliases

# The Fuck
eval $(thefuck --alias fuck)

# PATH
path+=("/opt/homebrew/opt/python@3.10/bin:")
path+=("/opt/homebrew/opt/node@16/bin:")
path+=("$(brew --prefix)/bin:")
path+=("/opt/hashicorp/bin:")
path+=(":$HOME/.local/bin")
path+=(":$HOME/.emacs.d/bin")
path+=(":$HOME/.cargo/bin")
path+=(":$HOME/.rvm/bin")
export PATH

# Fig post block. Keep at the bottom of this file.
# if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
#     #     
#     # Start fish shell
#     exec fish
#     # clear scrollback
#     printf "\e[3J"
# fi

# FZF integration
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
