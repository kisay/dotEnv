"Don't put any lines in your vimrc that you don't understand.
set encoding=utf-8

"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h11

" 不生成swp文件
set noswapfile

set t_Co=256

colorscheme badwolf         " awesome colorscheme

syntax enable           " enable syntax processing


set tabstop=4       " number of visual spaces per TAB

set softtabstop=4   " number of spaces in tab when editing

set expandtab       " tabs are spaces

set number              " show line numbers

set paste

set showcmd             " show command in bottom bar

set cursorline          " highlight current line

set relativenumber		" 相对行号

filetype indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching [{()}]


""""" 搜索
set incsearch           " search as characters are entered
set hlsearch            " highlight matches


""""" 折叠
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max

" space open/closes folds
nnoremap <space> za

set foldmethod=indent   " fold based on indent level


set nocompatible              " be iMproved, required
filetype off                  " required

set nobackup

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 图标
Plugin 'ryanoasis/vim-devicons'

" 树形插件
Plugin 'scrooloose/nerdtree'

" 启动vim自动打开NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

map <C-n> :NERDTreeToggle<CR>


" NerdTree git 插件
Plugin 'Xuyuanp/nerdtree-git-plugin'

" 语法检测和语法提示
"Plugin 'scrooloose/syntastic'

" 文件查找
Plugin 'kien/ctrlp.vim'

"状态栏
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

" 默认显示所有buffer
"let g:airline#extensions#tabline#enabled = 1

" 主题
Plugin 'altercation/vim-colors-solarized'

" 类似于grep的
Plugin 'mileszs/ack.vim'

"
Plugin 'scrooloose/nerdcommenter'


" git
"Plugin 'airblade/vim-gitgutter'

" git 支持
Plugin 'tpope/vim-fugitive'

" PHP环境增强
Plugin 'spf13/piv'

" 文本缩进提示
Plugin 'yggdroot/indentline'
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'


"   ,pd              生成PHP DOC
"   <C - X> <C - O>  显示自动补全的菜单
"   shift + k        显示函数的php文档,目前仅支持php5.3语法 


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
