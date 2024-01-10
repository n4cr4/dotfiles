# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

export zenhan='/mnt/c/bin/zenhan.exe'
export PATH=$PATH:/mnt/c/bin/
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/snap/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

zinit light-mode for \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-completions \
    zdharma/history-search-multi-word

zinit ice wait"2" lucid as"command" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

zinit ice from"gh-r" as"program" mv"bin/exa* -> exa"
zinit light ogham/exa

zinit light agkozak/zsh-z

zinit ice wait"1" lucid from"gh-r" for \
    sbin'fzf' junegunn/fzf \
    sbin'**/lazygit' jesseduffield/lazygit \
    sbin'lazydocker' jesseduffield/lazydocker \
    as"program" mv"dust* -> dust" pick"dust/dust" @bootandy/dust

alias cat="bat"
alias ls="exa --icons"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias tree="exa -T"
alias lg="lazygit"
alias ld="lazydocker"
alias dcd="docker compose down"
alias dcu="docker compose up"
alias dcb="docker compose build"

alias rie="explorer.exe"
alias vim="nvim"
