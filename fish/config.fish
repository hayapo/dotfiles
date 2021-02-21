set PATH $HOME/.cargo/env $PATH
set PATH /usr/local/bin/ecs-cli $PATH

if test ! -e ~/.dircolors/dircolors.ansi-dark
    git clone https://github.com/seebi/dircolors-solarized.git ~/.dircolors
end
eval (dircolors -c ~/.dircolors/dircolors.ansi-dark)

function cd
    builtin cd $argv
        lsd --depth 1
end

alias lsd "lsd --tree -I "target" -I "node_modules" -I "fonts" -I "Downloads" "
alias ll "lsd --depth 2"
alias ls "lsd --depth 1"
