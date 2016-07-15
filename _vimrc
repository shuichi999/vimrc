set number
set nowrap
au FileType sql setl formatprg=/usr/local/bin/pg_format\ -
"タブ、空白、改行の可視化
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
   
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif
if v:version >= 704
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/shuichi.tsukamoto/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/shuichi.tsukamoto/.vim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
call dein#add('VimClojure')
call dein#add('Shougo/unite.vim')
call dein#add('jpalardy/vim-slime')
call dein#add('scrooloose/syntastic')
call dein#add('Shougo/vimfiler.vim')
call dein#add('itchyny/lightline.vim')
call dein#add('t9md/vim-textmanip')
call dein#add('ujihisa/unite-colorscheme')
call dein#add('tomasr/molokai')
call dein#add('SQLUtilities')
call dein#add('elzr/vim-json')
let g:vim_json_syntax_conceal = 0
call dein#add('Align')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
endif
