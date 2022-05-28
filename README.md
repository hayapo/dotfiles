# How to SetUp

## Before clone this repo

1. Install git
2. SSH setting  
    1. `mkdir .ssh && cd .ssh`
    2. `ssh-keygen -t ed25519 -C "keep.forward1001@gmail.com"`
    3. ~/.sshに以下の内容を記載  

        ```config
        Host github github.com
        HostName github.com
        User git
        IdentityFile ~/.ssh/id_git_ed25519
        ```

    4. `ssh -T github`

## Clone this repo

`git clone git@github.com:hayapo/dotfiles_kali.git`

## After clone this repo

```bash
sudo chmod +x dotfiles
./dotfiles.sh install
./dotfiles.sh symblink
./dotfiles.sh fish
 
```
