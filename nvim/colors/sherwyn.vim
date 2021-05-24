" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "sherwyn"

highlight Comment      ctermfg=8                        guifg=#808080
highlight Constant     ctermfg=14            cterm=none guifg=#00ffff               gui=none
highlight String       ctermfg=13            cterm=none guifg=#00ffff               gui=none
highlight Identifier   ctermfg=5                        guifg=#00c0c0
highlight Statement    ctermfg=3             cterm=bold guifg=#c0c000               gui=bold
highlight PreProc      ctermfg=14                       guifg=#00ff00
highlight Type         ctermfg=2             cterm=bold guifg=#00c000
highlight Special      ctermfg=5                        guifg=#0000ff
highlight Error        ctermbg=9                        guibg=#ff0000
highlight Todo         ctermfg=4             ctermbg=3  guifg=#000080 guibg=#c0c000
highlight Directory    ctermfg=2                        guifg=#00c000
highlight StatusLine   ctermfg=15            cterm=bold guifg=#ffff00 guibg=#0000ff gui=none
highlight Normal       ctermfg=7                        guifg=#ffffff guibg=#000000
highlight Search                  ctermbg=3                           guibg=#c0c000
highlight Directory    ctermfg=2                        guifg=#00c000
highlight LineNr       ctermfg=8
highlight BufTabLine              ctermbg=8
highlight BufTabLineFill          ctermbg=8
highlight CocFloating  ctermfg=0  ctermbg=8

