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

ctags
----
# Some MacOS comes with ctags 
$ /usr/bin/ctags
usage: ctags [-BFadtuwvx] [-f tagsfile] file ...
    
# Don't use that default ctags. Install Exuberant Ctags from homebrew
$ brew install ctags
$ alias ctags="`brew --prefix`/bin/ctags"
$ alias ctags >> ~/.bash_profile
$ alias ctags >> ~/.zshrc
    
$ which ctags
/usr/local/bin/ctags

nvim ~/.ctags
--recurse=yes
--exclude=.git
--exclude=BUILD
--exclude=.svn
--exclude=*.js
--exclude=vendor/*
--exclude=node_modules/*
--exclude=db/*
--exclude=log/*
--exclude=\*.min.\*
--exclude=\*.swp
--exclude=\*.bak
--exclude=\*.pyc
--exclude=\*.class
--exclude=\*.sln
--exclude=\*.csproj
--exclude=\*.csproj.user
--exclude=\*.cache
--exclude=\*.dll
--exclude=\*.pdb

search
------
https://dev.to/iggredible/how-to-search-faster-in-vim-with-fzf-vim-36ko

### FZF

``` shell
brew  install fzf
```

### ripgrep

``` shell
brew install ripgrep
```

.zshrc
``` shell
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
```


