" Configuration for vim-plug
call plug#begin()
Plug 'derekwyatt/vim-scala'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify'
Plug 'justinmk/vim-sneak'
Plug 'scrooloose/nerdtree'
call plug#end()

" color scheme
set background=dark
colorscheme gruvbox

" scala support
" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

set number
set nobackup
set nowritebackup

" reduce diagnostics update time
set updatetime=300

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)<Paste>
map <C-n> :NERDTreeToggle<CR>
