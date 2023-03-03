:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse
:set textwidth=0
:set nowrap 
"colorscheme
set background=dark
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
source /home/dalbaeb123/.local/share/nvim/plugged/vim-deep-space/colors/deep-space.vim

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tpope/vim-surround'
Plug 'ap/vim-buftabline'
Plug 'https://github.com/akinsho/toggleterm.nvim'
Plug 'https://github.com/arcticicestudio/nord-vim'
Plug 'https://github.com/ycm-core/YouCompleteMe'
Plug 'https://github.com/tyrannicaltoucan/vim-deep-space'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ayu-theme/ayu-vim'

call plug#end()

" meme lua
lua require("toggleterm").setup()
:set completeopt-=preview

lua <<EOF
require('nvim-treesitter.configs').setup {
  ensure_installed = "cpp",
  highlight = { enable = true },
  indent = { enable = true }
}
EOF
" KeyMaps
nnoremap <F6> :NERDTreeToggle<CR>
nnoremap <F5> :NERDTreeFocus<CR>
nnoremap <C-J> :bnext<CR>
nnoremap <C-L> :bprev<CR>
nnoremap <F7> :ToggleTerm<CR>
