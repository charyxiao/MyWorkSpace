# MyWorkSpace

## Installation
* git clone https://github.com/charyxiao/MyWorkSpace.git
* cd MyWorkSpace && sh install.sh

## required
* git vim8 tmux ctags clang
* if you are using centos7, see install.sh line2-6

## For c/c++ Completion
* deoplete.nvim + deoplete-clangx[clang + python3]
```
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/deoplete-clangx'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
```

* coc.nvim [nodejs + clangd include by llvm]
    - `:CocInstall coc-clangd`
    - copy coc-settings.json .vim

## Font
* Source Code Pro is a nice font!
* Courier New is also a nice font!
