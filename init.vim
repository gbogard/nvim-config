" Configuration for vim-plug
call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'derekwyatt/vim-scala'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'kshenoy/vim-signature'
Plug 'airblade/vim-rooter'
Plug 'scrooloose/nerdcommenter'
Plug 'yggdroot/indentline'
Plug 'mattn/emmet-vim'
call plug#end()

let g:coc_global_extensions = ['ts-server','html','json','css']

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/target/*,*/node_modules/*

" color scheme
set background=dark
colorscheme gruvbox

" folding
set foldmethod=syntax
set foldopen-=block

" better display for messages
set cmdheight=2

" always display signs
set signcolumn=yes

" scala support
" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

" line numbers
set number

set nobackup
set nowritebackup

" reduce diagnostics update time
set updatetime=300

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" set leader key
let mapleader=' '

" Remap rename symbol
nmap <leader>r <Plug>(coc-rename)

" Remap format document
nmap <silent> <leader>f :Format<CR>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)<Paste>

map <C-n> :NERDTreeToggle<CR>
map <C-p> :CtrlP

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Clear search highlight with esc
nnoremap <esc> :noh<return><esc>
