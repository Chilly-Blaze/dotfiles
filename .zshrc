# p10k. Ensure it always on the top of the configuration
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History Configure
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=1000

# zshoptions
setopt autocd beep extendedglob nomatch notify nocaseglob extendedhistory sharehistory appendhistory incappendhistory histexpiredupsfirst histignoredups histreduceblanks correct correctall 
# Command style
bindkey -e

zstyle :compinstall filename '/home/tsundere/.zshrc'

# Instruction Complement
autoload -Uz compinit && compinit
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# History search instead of foolish up/down
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# alias
alias rm='trash-put'
alias sudo='sudo '
alias tree='tree -a -I .git'
alias -g v='nvim'
alias -g vi='nvim'
alias ls='logo-ls'
alias ll='exa -l --color=auto'
alias la='exa -ahl --color=auto'
alias lsf='logo-ls | grep'
alias du='du -lh --max-depth=1'
alias vz='v ~/.zshrc && exec zsh'
alias sz='exec zsh'
alias zb='neofetch | lolcat'
alias c='clear'
alias df='df -h'
alias jbs='jobs -l'
alias yyay='yes | yay'
function doc() docx2txt < $1 | less
# Git Alias
alias ga='git add'
alias gl='git log --graph --pretty=oneline --abbrev-commit'
alias gac='git add -u && git commit -m'
alias gi='git init'
alias gph='git push origin HEAD'
alias glh='git pull origin HEAD'
alias gb='git checkout -b'
alias gc='git checkout'
alias gs='git status --short'
alias gr='git remote add origin'
function gacp() {
    git add -u
    if [ -n "$1" ]
    then
        git commit -m "$1"
    else
        git commit -m update # default commit message is `update`
    fi # closing statement of if-else block
    git push origin HEAD
}
alias lat='pvenv && python ~/.local/bin/latexocr && deactivate'
# Python virtualenv
function pvenv() {
    venv_path=~/.config/venv
    act_path=bin/activate
    if [ "$1" = "ls" ]; then
        ls $venv_path
    elif [ "$1" = "rm" ]; then
        shift
        while [ -n "$1" ] && [ -d ${venv_path}/"$1" ]; do
            echo "delete ${venv_path}/${1}..."
            rm -rf ${venv_path}/${1}
            shift
        done
    elif [ -n "$2" ]; then
        echo "copy ${venv_path}/${1} to ${venv_path}/${2}..."
        virtualenv-clone ${venv_path}/${1} ${venv_path}/${2} && . ${venv_path}/${2}/${act_path}
    elif [ -z "$1" ]; then
        echo "activate ${venv_path}/main/${act_path}..."
        . ${venv_path}/main/${act_path}
    elif [ -e ${venv_path}/"$1"/${act_path} ]; then
        echo "activate ${venv_path}/${1}/${act_path}..."
        . ${venv_path}/"$1"/${act_path}
    else
        echo "create ${venv_path}/$1 and activate it..."
        virtualenv ${venv_path}/"$1" > /dev/null && . ${venv_path}/"$1"/${act_path}
    fi
}

# Plugin
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh
source /usr/share/zsh/plugins/zsh-extract/extract.plugin.zsh

# Custom path
path+=('/home/tsundere/Documents/Non-pacman/bin')

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Autojump
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

# pnpm
export PNPM_HOME="/home/tsundere/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
