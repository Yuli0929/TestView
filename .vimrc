filetype on "开启文件类型检测
filetype plugin on "根据文件类型加载不同的插件
set incsearch "开启实时搜索
set ignorecase "搜索时大小写不敏感
set nocompatible "关闭兼容模式
set backspace=indent,eol,start "backspace删除
set wildmenu "vim自身命令行模式补全
syntax enable "开启语法高亮
syntax on "允许语法高亮配色替换默认方案
set nu "显示行号
set mouse=a "鼠标可用
set tabstop=4 "tab缩进
set shiftwidth=4
set expandtab
set smarttab

set cindent "c文件自动缩进
set autoindent "自动对齐
set smartindent "自动缩进

set hlsearch "查找高亮显示

set laststatus=2 "启动显示状态行
set t_Co=256 "设置支持256色
set background=dark "主题颜色
colorscheme molokai

set foldmethod=indent "基于缩进或者语法进行代码折叠
"set foldmethod=syntax
set nofoldenable   "启动vim时关闭所有折叠效果

" vundle settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Yggdroot/indentLine'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'vim-scripts/taglist.vim' 
"Plugin 'kshenoy/vim-signature'
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
"Plugin 'vim-scripts/indexer.tar.gz'
"Plugin 'vim-scripts/DfrankUtil'
"Plugin 'vim-scripts/vimprj'
"Plugin 'dyng/ctrlsf.vim'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'vim-scripts/DrawIt'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'sjl/gundo.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'lilydjwg/fcitx.vim'
call vundle#end()
filetype plugin indent on

" molokai settings
let g:molokai_original = 1
let g:rehash256 = 1

" cpp-enhanced-highlight settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

" taglist settings
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Auto_Open = 1
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
noremap <F8> :TlistToggle<CR>
noremap <F6> :!ctags -R<CR>

" NERDtree settings
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeWinPos="left"
let NERDTreeAutoDeleteBuffer=1
