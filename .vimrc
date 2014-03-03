filetype on
autocmd FileType c,cp,cpp,h :setlocal cindent cinoptions=:0,g0,t0
autocmd FileType c,cp,cpp,h :setlocal et sta sw=4 sts=4 tabstop=4
au bufread,bufnew *.cp set filetype=c

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \ exe "normal g`\"" |
     \ endif

filetype plugin on
syntax enable
syntax on

":colorscheme tabula
":colorscheme soso
":colorscheme autumn2
:colorscheme lucius

filetype plugin indent on
set completeopt=longest,menu

" :help ins-completion
" :help compl-omni
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"

set foldmethod=syntax

set foldlevel=100  

set noswapfile

set number

"set mouse=a

set autoread

let mapleader=","             "Set mapleader

set history=1000

" 
set t_Co=256

set expandtab

"unenable complete

"set paste

set autoindent

set smartindent

set nowrap

"set sidescroll=10

set modifiable

set whichwrap=b,s,<,>,[,]

set shiftwidth=4

set hlsearch
" 
"set tabstop=8

set smarttab

set encoding=utf-8
"language message zh_CN.UTF-8
" 
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set scrolloff=8

set ruler

" 
"set expandtab

" 
"set autochdir

set hidden

set cmdheight=1

set laststatus=2

set nocompatible

set backspace=indent,eol,start

"set grepprg=grep\ -nR\ -w\ --include=*\ --include=*\ $*\ /mnt/hgfs/share/rtware/
"set grepprg=grep\ -nR\ -w\ --include=*\ --include=*\ $*\ /home/vi/workspace/linux-2.6.32.42/
"set grepprg=grep\ -nR\ -w\ --include=*\ --include=*\ $*\ /mnt/hgfs/workspace/broadpos_dev/


set lbr

set tw=500


set wrap "Wrap lines"


"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplMapWindowNavVim=1
"let g:miniBufExplorerMoreThanOne=0
"let g:miniBufExplModSelTarget=0

"let g:winManagerWindowLayout='FileExplorer|TagList'
"let g:winManagerWindowLayout='TagList'
"let g:AutoComplPop_MappingDriven = 1
"nmap wm : WMToggle<cr>


"set helplang=cn

"let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWindowLayout='TagList'
nmap wm :WMToggle<cr>

nnoremap X :qall<CR>

nmap <F6> :cn<cr>
nmap <F5> :cp<cr>

" MiniBufExplorer
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1

nnoremap <silent> <F12> :A<CR>

nnoremap <silent> <F3> :Grep<CR>


set tags=tags
"set tags+=/home/bta/32ora/src/tags
"set tags+=/home/bta/csrc/tags
"set tags+=/home/hstest/workspace/linux-2.6.32/tags
set tags+=/usr/include/tags
nnoremap <silent> <F11> :!ctags -R --c-kinds=+p --c++-kinds=+lp --fields=+iaS --fields=+l --extra=+q <CR>
"noremap <c-]> g<c-]>

nmap <silent> <F10> :!astyle --style=ansi -R "./*.c" "./*.h" -s4 -S -N -L -m0 -M40 --suffix=none --convert-tabs %f<CR>
"map <F5> : Calendar <cr>
"map <F6> : ConqueTerm bash <cr>

set cursorline

set cursorcolumn


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

"cs add /root/src/qemu-1.5.1/cscope.out /root/src/qemu-1.5.1 

if getfsize("vimscript")>0
    source vimscript 
endif

"set ofu=syntaxcomplete#Complete
"autocmd FileType python　set omnifunc=pythoncomplete#Complete
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

"-----------------------    TagList    -----------------------
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidth=25
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Inc_Winwidth = 10
nnoremap <silent> <F8> :TlistToggle<CR>

"-----------------------    NERDTree    -----------------------
let NERDTreeWinPos = 'right'
let NERDTreeWinSize = 25
nnoremap <silent><F7> :NERDTreeToggle<CR>


"-----------------------    Bufexplorer    -----------------------
let g:bufExplorerDefaultHelp = 0
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerSortBy = 'mru'
let g:bufExplorerSplitRight = 0
let g:bufExplorerSplitVertical = 1
let g:bufExplorerSplitVertSize = 30
let g:BufExplorerUseCurrentWindow = 1
noremap <silent> <F6> :BufExplorer<CR>
noremap <silent> <m-F6> :BufExplorerHorizontalSplit<CR>
noremap <silent> <c-F6> :BufExplorerVerticalSplit<CR>

"-----------------------    MiniBufExplorer    -----------------------
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
map <Leader>b :MiniBufExplorer<CR>
map <Leader>c :CMiniBufExplorer<CR>
map <Leader>u :UMiniBufExplorer<CR>
map <Leader>t :TMiniBufExplorer<CR>
