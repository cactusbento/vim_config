" source /usr/share/vim/vimfiles/archlinux.vim

set encoding=utf-8

" Recovery Disabled
set nobackup
set nowritebackup

set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
syntax enable

call plug#begin()
"	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'dense-analysis/ale'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:airline_theme='ayu_mirage'
let g:airline#extensions#ale#enabled = 1

let g:ale_completion_autoimport = 1
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

nmap <silent> <C-q> <Plug>(ale_previous_wrap)
nmap <silent> <C-e> <Plug>(ale_next_wrap)

let g:ale_set_highlights = 0
" highlight ALEWarning ctermbg=DarkGreen

set omnifunc=ale#completion#OmniFunc

" inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
" inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

autocmd CompleteDone * pclose!
