# dotfiles

My dotfiles.

## How to manage dotfiles

1. Create a git repository
2. Move files you want to manage to git repository
3. Create symlinks back to $HOME directory

```sh
mkdir ~/dotfiles
cd ~/dotfiles
git init
# Move files you want to manage
mv ~/.vimrc .
# Link files back to home directory
ln -s /Users/hck/dotfiles/.vimrc /Users/hck/.vimrc
```

## Migrate on a new computer

1. Clone this repository
2. Create symlinks to your home directory
