# dotfile

插件
----

``` 
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

python
-----
```
brew install python
```

neovim
-----
``` 
pip3 install neovim
```

black
----
```
pip3 install black
```

neovim
-----
``` python
brew install neovim
```


``` python
mkdir ~/.config
git clone https://github.com/nocmk2/dotfile.git ~/.config/nvim
cd ~/.config/nvim
ln -s ~/.config/nvim ~/.vim
```

font
-----

```
git clone https://github.com/powerline/fonts.git
cd fonts
./install
```

iterm2
----
Preferences-> Profiles -> Text -> Non-ASCII Font -> Go Mono for Powerline


zsh
----
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

inside ~/.zshrc
plugins=(zsh-autosuggestions)

