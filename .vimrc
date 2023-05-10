" :vimspector
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/usr/share/vim/vimfiles/autoload/vundle.vim
" if we set .vim as runtime path, we don't have to type absolute path for
" suddirectories.
set rtp+=~/.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Debugger
Bundle 'puremourning/vimspector'

" Vundle Plugins
Bundle 'ervandew/supertab'
Bundle 'SirVer/ultisnips'
Bundle 'lambdalisue/nerdfont.vim'
Bundle 'chrisbra/Colorizer'
Bundle 'junegunn/fzf'
Bundle 'xuhdev/vim-latex-live-preview'

" Highlighters
Bundle 'nvie/vim-flake8'
Bundle 'gregsexton/MatchTag'
Bundle 'davidhalter/jedi-vim'

Bundle 'ycm-core/YouCompleteMe'



" File manager 
Bundle 'preservim/nerdtree'
Bundle 'tiagofumo/vim-nerdtree-syntax-highlight'
Bundle 'ryanoasis/vim-devicons'
Bundle 'PhilRunninger/nerdtree-visual-selection'


" Color Schemes 
" Bundle 'wojciechkepka/vim-github-dark'
" Bundle 'cocopon/iceberg.vim'
" Bundle 'sonph/onehalf'
" Bundle 'morhetz/gruvbox'
" Bundle 'arcticicestudio/nord-vim'
" Bundle 'joshdick/onedark.vim'
" Bundle 'bluz71/vim-moonfly-colors'
" Bundle 'Mangeshrex/uwu.vim'
" Bundle 'jacoborus/tender.vim'
Bundle 'ray-x/aurora'
" Bundle 'bluz71/vim-nightfly-guicolors'
" Bundle 'tomasiser/vim-code-dark'
" Bundle 'ajmwagar/vim-deus'
" Bundle 'ayu-theme/ayu-vim'
" Bundle 'sjl/badwolf'
" Bundle 'romainl/Apprentice'
" Bundle 'drewtempelmeyer/palenight.vim'
" Bundle 'fenetikm/falcon'
" Bundle 'preservim/vim-colors-pencil'
" Bundle 'pineapplegiant/spaceduck'
" Bundle 'challenger-deep-theme/vim'
" Bundle 'liuchengxu/space-vim-dark'
" Bundle 'ghifarit53/tokyonight-vim'
" Bundle 'kyoz/purify'
" Bundle 'hzchirs/vim-material'
" Bundle 'artanikin/vim-synthwave84'
" Bundle 'tyrannicaltoucan/vim-deep-space'


" Snippets are separated from the engine. Add this if you want them:
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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


" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
" My settings
set encoding=utf-8
set number relativenumber

"Tab size
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

set smartcase
set smartindent
set nowrap
set noswapfile
set mouse=a
set incsearch
set nobackup
set undodir=~/.vim/undodir
set undofile

set wildmode=longest,list,full
set wildmenu

set foldmethod=indent

let g:vimspector_enable_mappings = 'HUMAN'
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_log_level = 'debug'
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ "python":1,
			\ }
colorscheme aurora

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

