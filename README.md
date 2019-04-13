# vim-gifford
the best named vim repository in the universe!

It contains most of my common settings that I will load using Pathogen.

Included:
 - Common editor settings
 - Designed to work for both Mac (MacVim) and Windows (gvim)

Not Included:
 - Fonts
 - References to other plugins

## Install
I'm using bundler to manage gem dependancies. This is used for the
installation routine.

### Pre-Requisites
```
gem install bundler
```

### Mac
```
git clone https://github.com/timgifford/vim-gifford/ ~/.vim
cd ~/.vim
bundle exec rake install
```

### Windows
```
git clone https://github.com/timgifford/vim-gifford/ ~/vimfiles
cd ~/vimfiles
gem install bundler -v '1.17.3'
bundle exec rake install
```


