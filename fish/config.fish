alias open "explorer.exe"
set PATH $HOME/.cargo/env $PATH
set PATH /usr/local/bin/ecs-cli $PATH
set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.pyenv/bin $PATH
if test ! -e ~/.dircolors/dircolors.ansi-dark
    git clone https://github.com/seebi/dircolors-solarized.git ~/.dircolors
end
eval (dircolors -c ~/.dircolors/dircolors.ansi-dark)

# cd > ls
function cd
    builtin cd $argv
        lsd --depth 1 -l
end

#alias exec
alias exec "exec $SHELL -l"

#alias lsd
alias lsd "lsd --tree -I "target" -I "node_modules" -I "fonts" -I "Downloads" "
alias ll "lsd --depth 2"
alias ls "lsd --depth 1"
alias lsl "ls -l"
alias lsa "ls -la"

#alias git 
alias gs "git status"
alias ga "git add"
alias gmc "gitmoji commit"
alias gp "git push"
alias gp main "git push -u origin main"
alias gp master "git push -u origin master"

neofetch
starship init fish | source