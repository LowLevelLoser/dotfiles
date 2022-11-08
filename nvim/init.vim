syntax enable
filetype plugin indent on

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/barbar.lua
source $HOME/.config/nvim/plug-config/treesitter.lua
source $HOME/.config/nvim/plug-config/telescope.lua
source $HOME/.config/nvim/plug-config/treesitter-context.lua

:set number
:set relativenumber
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop
:set mouse=a
:colorscheme gruvbox
:filetype detect
:set nocompatible 
:filetype plugin on

:let mapleader = " "
"that one guy Ale config
let g:ale_linters = {
\ 'cs': ['OmniSharp'],
\}
let b:ale_linters = ['cs', 'flow-language-server']
autocmd FileType cs nmap <silent> <buffer> <leader>gd <Plug>(omnisharp_go_to_definition)
autocmd FileType cs nmap <silent> <buffer> <leader>rn <Plug>(omnisharp_rename)
autocmd FileType cs nmap <silent> <buffer> <leader>ff :OmniSharpCodeFormat<CR>


