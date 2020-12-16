set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'dapplebeforedawn/vim-typing-practice'


" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/VimFold4C'

Plugin 'JamshedVesuna/vim-markdown-preview'

" Code Completions
Plugin 'Shougo/neocomplcache'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'

" snippets
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" snipmate dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

" Fast navigation
Plugin 'jwhitley/vim-matchit'
Plugin 'Lokaltog/vim-easymotion'

" Fast editing
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'

" IDE features
Plugin 'scrooloose/nerdtree'
Plugin 'humiaozuzu/TabBar'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'

" Other Utils
" Plugin 'humiaozuzu/fcitx-status'
Plugin 'nvie/vim-togglemouse'

" Syntax/Indent for language enhancement
" markup language
Plugin 'tpope/vim-markdown'
" Plugin 'timcharper/textile.vim'
" Golang
Plugin 'fatih/vim-go'

" FPs
Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'wlangstroth/vim-racket'
" Plugin 'vim-scripts/VimClojure'
" Plugin 'rosstimson/scala-vim-support'

" Color Schemes
Plugin 'altercation/vim-colors-solarized'
" Plugin 'tomasr/molokai'
Plugin 'chriskempson/vim-tomorrow-theme'

"filetype plugin indent on     " required!
"
Plugin 'makerj/vim-pdf'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'lyuts/vim-rtags'
Plugin 'cosminadrianpopescu/vim-tail'



" let Vundle manage Vundle, required
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'mattn/vim-lsp-settings'
