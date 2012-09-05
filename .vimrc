:syntax enable
:set background=dark
":colorscheme slate
":colorscheme solarized
:set shiftwidth=4
:set tabstop=4
:set ignorecase smartcase
:set expandtab
:setlocal spell spelllang=en_au
:set spellfile=~/.vimspell.utf8.add
:set nospell
:set encoding=utf-8
set backupskip=/tmp/*,/private/tmp/*"
:if &term == "xterm-color"
:   set t_kb=
:   fixdel
:endif

highlight NobreakSpace ctermbg=DarkBlue guibg=DarkBlue
match NobreakSpace / /
"highlight WhitespaceEOL ctermbg=DarkBlue guibg=DarkBlue
"match WhitespaceEOL /\s\+$/

"
" Press F2 to switch to UTF-8 encoding
"
map <F2> :set spell!<CR>
"map <F2> :call Switch_to_UTF8()<CR>
map <F3> :wa<CR>:!/Users/will/bin/html-compile.py<CR>

func! Switch_to_UTF8()
    set encoding=utf-8
endfunc


map <F4> <Esc>:%!python -m json.tool<CR>


autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


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
