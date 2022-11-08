call plug#begin('~/.local/share/nvim/site/autoload/plugs')

	"File explorer
	Plug 'preservim/nerdtree'

	"color scheme aethetics
	Plug 'morhetz/gruvbox'
	Plug 'itchyny/lightline.vim'
	Plug 'https://github.com/Shatur/neovim-ayu'

	"auto pairs
	Plug 'https://github.com/jiangmiao/auto-pairs'

	" Rust
	Plug 'rust-lang/rust.vim'
	
	"code completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'OmniSharp/omnisharp-vim'
	Plug 'dense-analysis/ale'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	"tabs
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'romgrk/barbar.nvim'

	"tree / telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
	Plug 'nvim-lua/popup.nvim'
	Plug 'lukas-reineke/indent-blankline.nvim'
	Plug 'nvim-treesitter/nvim-treesitter-context'

	"cool stuff
	Plug 'sbdchd/neoformat'

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
let NERDTreeShowHidden=1

nnoremap <C-p> :Files<Cr>

" find telescope files
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
