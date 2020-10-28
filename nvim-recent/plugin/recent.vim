if exists('g:loaded_recent') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo
set cpo&vim

hi def link RecentHeader      Number
hi def link RecentSubHeader   Identifier
" hi RecentCursorLine ctermbg=238 cterm=none

command! Recent lua require'recent'.recent()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_recent = 1
