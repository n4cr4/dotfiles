# hist file conf
HISTSIZE=1000
SAVEHIST=100000
HISTFILE=~/.zsh_history

# path conf
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/snap/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zinit conf
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

zinit light Aloxaf/fzf-tab

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

zinit ice wait"2" lucid as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

zinit ice from"gh-r" as"program" mv"bin/exa* -> exa"
zinit light ogham/exa

zinit ice as"program" from"gh-r" lucid \
  atclone"./zoxide init zsh > init.zsh" \
  atpull"%atclone" src"init.zsh" nocompile'!'
zinit light ajeetdsouza/zoxide

zinit wait"1" lucid from"gh-r" for \
    sbin'fzf' junegunn/fzf \
    sbin'**/lazygit' jesseduffield/lazygit \
    sbin'lazydocker' jesseduffield/lazydocker \
    sbin'the-way' out-of-cheese-error/the-way \
    as"program" mv"dust* -> dust" pick"dust/dust" @bootandy/dust

eval "$(fzf --zsh)"
eval "$(the-way complete zsh)"
export THE_WAY_CONFIG="$HOME/.the-way.toml"

# alias conf
alias cat="bat"
alias ls="exa --icons"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias tree="exa -T"
alias lg="lazygit"
alias lad="lazydocker"
alias dcd="docker compose down"
alias dcu="docker compose up"
alias dcb="docker compose build"
alias cd="z"
alias rie="explorer.exe"
alias py="ipython"
alias se="~/dotfiles/bin/live-grep.sh"
alias ins="~/dotfiles/bin/install.sh"
alias dev="~/dotfiles/bin/tmux-template.sh"
