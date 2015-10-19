"-----------------
"General & Vundle|
"-----------------
set nocompatible    "no Vi compatibility mode
filetype off		"required for Vundle
set runtimepath+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'			"Let Vundle manage Vundle
Plugin 'scrooloose/nerdtree'		"Filesystem tree
Plugin 'scrooloose/syntastic'		"Syntax checking
Plugin 'scrooloose/nerdcommenter'	"Orgasmic commenting
Plugin 'bling/vim-airline'			"Status/Tabline
Plugin 'Shougo/neocomplete.vim'		"Autocompletion 
Plugin 'airblade/vim-gitgutter'		"Display diff in gutter (git)
Plugin 'mhinz/vim-signify'			"Display diff in gutter	(all VCS) 
Plugin 'Raimondi/delimitMate'		"Autocompletion for quotes, parens, brackets
Plugin 'majutsushi/tagbar'			"Displays tags in a window
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'kien/ctrlp'				"Fuzzy finder	
"Plugin 'honza/vim-snippets'
"Plugin 'SirVer/ultisnips'
"Plugin 'vim-scripts/snipMate'
"Plugin 'osyo-manga/Vim-marching'	"C-lang autocompletion support

call vundle#end()
filetype plugin indent on	"Filetype detection after Vundle executes
"Vundle Plugin HELP
" :PluginList		-lists configured plugins
" :PluginInstall	-installs plugins
" "PluginUpdate		-update plugins
" :PluginSearch foo	-searches for foo
" :PluginClean		-confirms removal of unused plugins
