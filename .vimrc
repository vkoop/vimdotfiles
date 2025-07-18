set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Fix for backspace problem
set bs=2

if filereadable(glob("~/.vimrc.local")) 
	source ~/.vimrc.local
endif

"Plugins # essential
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'


filetype plugin indent on 	"load indention defintion for different filetypes
syntax enable 			"syntax highlighting
set number   			"show line numbers
set cursorline
set noerrorbells visualbell t_vb=

let mapleader=","

"SuperTab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"NERDTree
map <leader>n :NERDTreeToggle<CR>

"Ack
map <leader>a <Esc>:Ack!

"Colors
set background=dark
colorscheme desert

"Fix filetypes
let filetype_m='objc'


nnoremap <F5> :GundoToggle<CR>

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

let g:Powerline_symbols = 'fancy'

" Set line numbering:
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set relativenumber

let g:EclimCompletionMethod = 'omnifunc'

" CtrlP
let g:ctrlp_custom_ignore = '\.git$\|log$\|tmp\|node_modules$\|.class$'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 

" project specific .vimrc" 
set exrc
set secure
"


" let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" " Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" " `s{char}{label}`
nmap s <Plug>(easymotion-s)

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

nnoremap  k gk
nnoremap  j gj

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1 

" set some default types
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd BufNewFile,BufRead Berksfile set filetype=ruby

