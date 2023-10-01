```
.__                                             .___      __    _____.__.__                 
|  |__ _____  ___.__._____  ______   ____     __| _/_____/  |__/ ____\__|  |   ____   ______
|  |  \\__  \<   |  |\__  \ \____ \ /  _ \   / __ |/  _ \   __\   __\|  |  | _/ __ \ /  ___/
|   Y  \/ __ \\___  | / __ \|  |_> >  <_> ) / /_/ (  <_> )  |  |  |  |  |  |_\  ___/ \___ \ 
|___|  (____  / ____|(____  /   __/ \____/  \____ |\____/|__|  |__|  |__|____/\___  >____  >
     \/     \/\/          \/|__|                 \/                               \/     \/ 
```

# hayapo dotfiles

## Installation

### Clone the repo

`git clone https://github.com/hayapo/dotfiles.git`

### Setting up

```bash
# help: ./dotfiles.sh -h
cd dotfiles
sudo chmod +x $HOME/dotfiles

# 上から順に実行していく
./dotfiles.sh install
./dotfiles.sh link

# ログインシェルの変更
echo "/home/linuxbrew/.linuxbrew/bin/zsh" | sudo tee /etc/shells
sudo chsh -s /home/linuxbrew/.linuxbrew/bin/zsh hayapo

# node install (after brew bundle)
nvm install --lts
nvm use --lts

```
