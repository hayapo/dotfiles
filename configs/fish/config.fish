set -U FZF_LEGACY_KEYBINDINGS 0
set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.cargo/env $PATH
set PATH $HOME/.pyenv/bin $PATH
set PATH $HOME/.pyenv/shims $PATH
set PATH $HOME/.poetry/bin $PATH
set PATH /usr/local/go/bin $PATH
set PATH $HOME/go/bin $PATH
set -U fish_greeting
set -gx XDG_CONFIG_HOME "$HOME/.config"

if test ! -e ~/.dircolors/dircolors.ansi-light
    git clone https://github.com/seebi/dircolors-solarized.git ~/.dircolors
end
eval (dircolors -c ~/.dircolors/dircolors.ansi-light)

#alias exec
alias ex "exec $SHELL -l"

#alias lsd
alias lsd "lsd --tree -I "target" -I "node_modules" -I "fonts" -I "Downloads" "
alias ls "lsd --tree --depth 1"
alias ll "ls -l"
alias lsa "ls -la"

#Update pyenv
alias pyenv_update "cd ~/.pyenv && git pull"

#alias git 
alias gs "git status"
alias ga "git add"
alias gall "git add ."
alias gmc "gitmoji commit -c"
alias gp "git push"
alias gpmain "git push -u origin main"
alias gpmaster "git push -u origin master"
alias gba "git branch -a"
alias gc "git checkout"
alias gcb "git checkout -b"
alias gcm "git commit -m"
alias cm "commit -m"
alias st "status"
alias a "add"
alias co "checkout"
alias br "branch"
alias bra "branch -a"
alias cob "checkout -b"

#alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"

#alias nvim
alias vi "nvim"
alias vim "nvim"

#alias fzf preview
#alias fzf "fd --type f --strip-cwd-prefix"
alias fp "fzf --preview 'bat  --color=always --style=header,grid --line-range :100 {}'"

function ghq_fzf_repo -d 'Repository search'
  ghq list --full-path | fzf --reverse --height=100% | read select
  [ -n "$select" ]; and cd "$select"
  echo " $select "
  commandline -f repaint
end

# fish key bindings
function fish_user_key_bindings
  bind \cg ghq_fzf_repo
end

starship init fish | source
eval (direnv hook fish)

set -U FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
# set -U FZF_FIND_FILE_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
set -U FZF_DEFAULT_OPTS "--height 80% --layout=reverse"
#set -U FZF_DIRECTORY_COMMAND "$FZF_DEFAULT_COMMAND"
# set -U FZF_DIRECTORY_OPTS "
#   --preview 'bat --color=always --style=header,grid {}'
#   --preview-window=right:60%
# "