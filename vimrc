call plug#begin('~/.vim/plugged')
Plug 'jacoborus/tender.vim'
Plug 'crusoexia/vim-monokai'

Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'

"Plug 'sirver/ultisnips'

Plug 'honza/vim-snippets'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'derekwyatt/vim-scala'

Plug 'https://github.com/w0rp/ale.git'

Plug 'bfrg/vim-cpp-modern'

Plug 'luochen1990/rainbow'
call plug#end()

set viminfo+=n~/.vim/viminfo

let g:rainbow_active = 1

filetype plugin indent on
syntax enable

colorscheme tender

set number
set showmatch
set cursorline
set hls
set ruler

set shiftwidth=4
set tabstop=2
set softtabstop=2

imap jk <esc>

au BufRead,BufNewFile *.sbt set filetype=scala

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

if has("autocmd")
	filetype plugin indent on
endif


"for LaTeX
autocmd FileType tex nmap <buffer> <C-T> :!xelatex %<CR>
autocmd FileType tex nmap <buffer> T :!zathura %:r.pdf<CR><CR>
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal="abdgm" 
set conceallevel=2
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" put \begin{} \end{} tags tags around the current word
map  <C-B>      YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
map! <C-B> <ESC>YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA


"ale
nnoremap <Leader>l :ALEToggle<CR>
nnoremap <Leader>L :ALEFix<space>
