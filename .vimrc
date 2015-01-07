"-----------------------    base config    -----------------------
"filetype on
"filetype plugin on
filetype plugin indent on
syntax on
set t_Co=256
set completeopt=longest,menu
set foldmethod=syntax
set foldlevel=100
set noswapfile
set number
"set mouse=a
set autoread
let mapleader=","             "Set mapleader
set history=1000
"unenable complete
"set paste
set autoindent
set smartindent
set nowrap
"set sidescroll=10
set modifiable
set whichwrap=b,s,<,>,[,]
set hlsearch

"config tab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
"set tabstop=8
"set tselect=4 stselect=4 sw=4 noet
"set smarttab
"set expandtab

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix
set scrolloff=8
set ruler
"set autochdir
"set cursorline
"set cursorcolumn
set hidden
set cmdheight=1
set laststatus=2
set nocompatible
set backspace=indent,eol,start
set linebreak
set textwidth=500
set wrap "Wrap lines"

"----------------------    Cmd    ------------------------
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \ exe "normal g`\"" |
     \ endif

autocmd FileType c,cp,cpp,h :setlocal cindent cinoptions=:0,g0,t0
autocmd FileType c,cp,cpp,h :setlocal et sta sw=4 sts=4 tabstop=4
autocmd bufread,bufnew *.cp set filetype=c

"command! -nargs=1 Silent
"	\ | execute ':silent !'.<q-args>
"	\ | execute ':redraw!'

"-----------------------    colorscheme      -----------------------
":colorscheme tabula
":colorscheme soso
":colorscheme autumn2
":colorscheme lucius
":colorscheme desert256
":colorscheme desert
":colorscheme peaksea
:colorscheme summerfruit256

"-----------------------    Map   ---------------------------
nnoremap X :qall<CR>
nnoremap <silent> <F12> :A<CR>
"nnoremap <silent> <F12> :!find `pwd` -name "*.[chsS]" -print | sed 's,^\./,,' > ./cscope.files && cscope -b<CR>
nnoremap <silent> <F11> :!find `pwd` -name '*.[hc]' -exec ctags --append {} +<CR>
"nnoremap <silent> <F11> :!ctags -R --c-kinds=+p --c++-kinds=+lp --fields=+iaS --fields=+l --extra=+q <CR>
nmap <silent> <F10> :!astyle --style=ansi -R "./*.c" "./*.h" -s4 -S -N -L -m0 -M40 --suffix=none --convert-tabs %f<CR>
nnoremap <silent> <C-m> :make clean -j8;make -j8<CR>
"nnoremap <silent> <C-m> :Silent make clean -j8 && make -j8<CR>

"-----------------------    TagList    -----------------------
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidth=25
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Inc_Winwidth = 10
nnoremap <silent> <F7> :TlistToggle<CR>
set tags=tags
set tags+=/usr/include/tags

"-----------------------    NERDTree    -----------------------
let NERDTreeWinPos = 'right'
let NERDTreeDirArrows = 0
let NERDTreeWinSize = 25
nnoremap <silent><F8> :NERDTreeToggle<CR>


"-----------------------    Bufexplorer    -----------------------
let g:bufExplorerDefaultHelp = 0
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerSortBy = 'mru'
let g:bufExplorerSplitRight = 0
let g:bufExplorerSplitVertical = 1
let g:bufExplorerSplitVertSize = 30
let g:BufExplorerUseCurrentWindow = 1
noremap <silent> <F4> :BufExplorer<CR>
noremap <silent> <m-F4> :BufExplorerHorizontalSplit<CR>
noremap <silent> <c-F4> :BufExplorerVerticalSplit<CR>

"-----------------------    MiniBufExplorer    -----------------------
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
map <Leader>b :MiniBufExplorer<CR>
map <Leader>c :CMiniBufExplorer<CR>
map <Leader>u :UMiniBufExplorer<CR>
map <Leader>t :TMiniBufExplorer<CR>

"----------------------    Cscope    ---------------------
set cscopequickfix=s-,c-,d-,i-,t-,e-
if has("cscope")
    set csprg=cscope
    set csto=0
    set cst
    set nocsverb
    if filereadable("cscope.out")
       cs add cscope.out
    elseif $CSCOPE_DB!= ""
        cs add %CSCOPE_DB
    endif
    set csverb
    set cscopetag
endif

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"----------------------    Grep    ---------------------
nnoremap <silent> <F3> :Grep<CR>
let Grep_Default_Filelist = '*.[chS]'
"let Grep_Default_Filelist = '*.c *.cpp *.asm'

"----------------------    Quickfix    ---------------------
nmap <F6> :cn<cr>
nmap <F5> :cp<cr>
nnoremap <silent>cw :cw 6<cr>
nnoremap <silent>cl :ccl <cr>
autocmd BufReadPost quickfix  setlocal modifiable
			\ | silent exe 'g/^/s//\=line(".")." "/'
			\ | setlocal nomodifiable
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"----------------------    unuse    ---------------------
"omini
"for close python direction
"set nocp
"set ofu=syntaxcomplete#Complete
"let g:OmniCpp_NamespaceSearch = 1
"let g:OmniCpp_ShowAccess = 1
"let g:OmniCpp_GlobalScopeSearch = 1
"let g:OmniCpp_ShowPrototypeInAbbr = 1
"let g:OmniCpp_MayCompleteDot = 1
"let g:OmniCpp_MayCompleteArrow = 1
"let g:OmniCpp_MayCompleteScope = 1
"let g:OmniCpp_DefaultNamespaces = ["std","_GLIBCXX_STD"]

"if getfsize("vimscript")>0
"source vimscript
"endif

"set ofu=syntaxcomplete#Complete
"autocmd FileType python¡¡set omnifunc=pythoncomplete#Complete
"autocmd FileType python runtime! autoload/pythoncomplete.vim

"map fg : Dox<cr>
"let g:DoxygenToolkit_autorName="victor.g"
"let g:DoxygenToolkit_briefTag_pre = "@brief\t"
"let g:DoxygenToolkit_paramTag_pre = "@param\t"
"let g:DoxygenToolkit_returnTag = "@return\t"
"let g:DoxygenToolkit_briefTag_funcName = "no"
"let g:DoxygenToolkit_maxFunctionProtoLines = 30

"let g:DoxygenToolkit_authorName="zhangmin"
"let s:licenseTag = "Copyright(C)\<enter>"
"let s:licenseTag = s:licenseTag . "For Asins\<enter>"
"let s:licenseTag = s:licenseTag . "Some right reserved\<enter>"
"let g:DoxygenToolkit_licenseTag = s:licenseTag
"let g:DoxygenToolkit_briefTag_funcName="yes"
"let g:doxygen_enhanced_color=1
"map <leader>da :DoxAuthor<cr>
"map <leader>df :Dox<cr>
"map <leader>db :DoxBlock<cr>
"map <leader>dc a /*  */<left><left><left>

"python
"let g:pydiction_location = '/home/vi/.vim/tools/pydirction/complete-dict'

"vim wiki
"map <Leader>w <Plug>VimwikiIndex
"map <F4> : Vimwiki2HTML <cr>

"let g:vimwiki_list = [{'path': '/mnt/hgfs/Dropbox/dropboxShare/vimwiki/vimwiki/',
"	    \ 'path_html': '/mnt/hgfs/Dropbox/dropboxShare/vimwiki/vimwiki/html/',
"	    \ 'html_header' : '/mnt/hgfs/Dropbox/dropboxShare/vimwiki/vimwiki/header.tpl'}]

"let g:vimwiki_camel_case = 0
"let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre'

"vimgdb
"let g:vimgdb_debug_file = ""
"run macros/gdb_mappings.vim
