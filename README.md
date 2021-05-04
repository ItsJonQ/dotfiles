# dotfiles

## Setup SSH keys

Follow [Github's SSH guide](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)


### Test SSH with Github

Run the following command:

```sh
ssh -T git@github.com
```


### Setting it up with servers

Run the following command, but replace x with server IP:

```shell
cat ~/.ssh/id_rsa.pub | ssh root@x.x.x.x "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"
```

[Learn more](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2)


## Install brew + dotfiles

To get setup from scratch, run this command in the Terminal:

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && git clone git@github.com:ItsJonQ/dotfiles.git ~/dotfiles`


## nvm

`curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash`


## Vim Plugged

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
