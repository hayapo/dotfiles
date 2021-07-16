alias open "explorer.exe"
set PATH $HOME/.cargo/env $PATH
set PATH /usr/local/bin/ecs-cli $PATH
set PATH $HOME/.local/bin/ $PATH
set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.pyenv/bin $PATH
set -U FZF_LEGACY_KEYBINDINGS 0

if test ! -e ~/.dircolors/dircolors.ansi-light
    git clone https://github.com/seebi/dircolors-solarized.git ~/.dircolors
end
eval (dircolors -c ~/.dircolors/dircolors.ansi-light)

# cd > ls
function cd
    builtin cd $argv
        lsd --depth 1 -l
end

#alias exec
alias ex "exec $SHELL -l"

#alias lsd
alias lsd "lsd --tree -I "target" -I "node_modules" -I "fonts" -I "Downloads" "
alias ll "lsd --tree --depth 2"
alias ls "lsd --tree --depth 1"
alias lsl "ls -l"
alias lsa "ls -la"

#alias git 
alias gs "git status"
alias ga "git add"
alias gall "git add ."
alias gmc "gitmoji commit -c"
alias gp "git push"
alias gpmain "git push -u origin main"
alias gpmaster "git push -u origin master"
alias activate "source .venv/bin/activate.fish"
neofetch
starship init fish | source