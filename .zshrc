HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# paths
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.cargo/env:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/.rye/env:$PATH
export PATH="$HOME/.rye/shims:$PATH"

# bind keys
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey ';5C' forward-word
bindkey ';5D' backward-word

# alias
## lsd
alias lsd="lsd --tree -I "target" -I "node_modules" -I "fonts" -I "Downloads" "
alias ls="lsd --tree --depth 1"
alias ll="ls -l"
alias lsa="ls -la"

## Git
### git 
alias gc-b="git checkout -b"
alias gp="git push"
alias gpl="git pull"
alias ga="git add"
alias gs="git status"
alias gc-m="git commit -m"
alias ghg="ghq get"

### lazy git
alias lg="lazygit"

## alias exec
alias ex "exec zsh"

## fzf
alias fp="fzf --preview 'bat  --color=always --style=header,grid --line-range :100 {}'"
bindkey -s '^p' 'fp\n'


## ghq配下のディレクトリを一覧表示
function _ghq_fzf_repo() {
  local repo="$(ghq list | fzf --height=100% --border --preview="ls -AF --color=always ${root}/{1}")"
  if [ -n "$repo" ]; then
    BUFFER="cd $(ghq root)/$repo"
  fi
  zle accept-line
  zle reset-prompt
}
zle -N ghq_fzf_repo _ghq_fzf_repo
bindkey '^g' ghq_fzf_repo

## fzf history
function fzf-select-history() {
    BUFFER=$(history -n -r 1 | fzf --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N fzf-select-history
bindkey '^r' fzf-select-history

# syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# complations
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# evals
eval "$($(brew --prefix)/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(sheldon source)"
