" Setup pathogen vim bundles, need to turn filetype off temporarily
filetype off
call pathogen#infect()
"call pathogen#helptags()

set number

syntax on
filetype on
filetype plugin indent on
set background=dark
"colorscheme slate
"colorscheme solarized

set shiftwidth=4
set tabstop=4
set expandtab

" wrap text at 79 chars
"set textwidth=79

set foldmethod=indent
set foldlevel=99
set foldnestmax=2
nnoremap <space> za
vnoremap <space> zf
set ignorecase smartcase
setlocal spell spelllang=en_au
set spellfile=~/.vimspell.utf8.add
set nospell
set encoding=utf-8
set backupskip=/tmp/*,/private/tmp/*"

"if &term == "xterm-color"
"   set t_kb=
"   fixdel
"endif

" No quickfix please
let g:pyflakes_use_quickfix = 0
let g:syntastic_check_on_open=1
let g:syntastic_python_checkers=['pyflakes']

" Mark special unicode invisibles like nbsp
highlight NobreakSpace ctermbg=DarkBlue guibg=DarkBlue
match NobreakSpace / /

" Show whitespace at end of line
highlight WhitespaceEOL ctermbg=DarkRed guibg=DarkRed
match WhitespaceEOL /\s\+$/

" Press <F2> to turn on spellcheck
map <F2> :set spell!<CR>

" I wonder what this was....
"map <F3> :wa<CR>:!/Users/will/bin/html-compile.py<CR>

" Press F2 to switch to UTF-8 encoding
"map <F2> :call Switch_to_UTF8()<CR>
"func! Switch_to_UTF8()
"    set encoding=utf-8
"endfunc

" Run the file through json.tool to clean it up
"map <F4> <Esc>:%!python -m json.tool<CR>


"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS


" Interesting colorscheme play here, not sure what it was for...
"function! ToggleBackground()
"    if (g:solarized_style=="dark")
"    let g:solarized_style="light"
"    colorscheme solarized
"else
"    let g:solarized_style="dark"
"    colorscheme solarized
"endif
"endfunction
"command! Togbg call ToggleBackground()
"nnoremap <F5> :call ToggleBackground()<CR>
"inoremap <F5> <ESC>:call ToggleBackground()<CR>a
"vnoremap <F5> <ESC>:call ToggleBackground()<CR>
"
"Powerline!
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

"set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
