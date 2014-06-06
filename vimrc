
"==========================================
" Basics 基本设置
"==========================================

" Setting {
    syntax on
    set nocp
    set background=dark
    if has("gui_running")  
        colorscheme Tomorrow-Night-Eighties
        
        " 高亮当前行
        set cursorline
        set transparency=2
    else  
        colorscheme default
    endif 

    " 件修改之后自动载入
    set autoread
    set wildmenu

    " 关闭备份
    set nobackup
    set noswapfile

    " 设置字体
    set guifont=Monaco:h14

    " 隐藏滚动条
    set guioptions-=M
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b

    " 编码
    set encoding=utf-8
    set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

    " 不生成swap文件
    set bufhidden=hide

    " 去掉输入错误的提示声音
    set novisualbell
    set noerrorbells

    "解决菜单乱码
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    set linespace=4

    " 显示行号
    set number
    set numberwidth=4
    " 显示当前行号
    set ruler
    " 相对行号
    " set relativenumber

    set colorcolumn=79
    set nowrap

    " 缩进
    set shiftwidth=4
    set tabstop=4
    set expandtab
    set softtabstop=4
    set autoindent
    set foldmethod=indent
    set foldlevel=99

"    autocmd FileType python set omnifunc=pythoncomplete
"    autocmd FileType javascript set omnifunc=javascriptcomplete
"    autocmd FileType html set omnifunc=htmlcomplete
"    autocmd FileType css set omnifunc=csscomplete

    " 输入法自动切换
    " MacVim 的偏好设置界面里面（按 ⌘+,），把 Draw marked text inline
    " 这个选项去掉
    set noimdisable
    autocmd! InsertLeave * set imdisable|set iminsert=0
    autocmd! InsertEnter * set noimdisable|set iminsert=0
" }

" Search {
    set hlsearch
    set ignorecase
    set smartcase
    set gdefault
    set incsearch
" }

" Mappings {
    let mapleader=","
    let g:mapleader=","
" }

"==========================================
" Vundle 插件管理
"==========================================
    set nocompatible
    filetype off
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'

    " 代码片段管理
    Bundle 'SirVer/ultisnips'
    let g:UltiSnipsEditSplit="vertical"
    let g:UltiSnipsSnippetDir = "~/.vim/UltiSnips"
    let g:UltiSnipsExpandTrigger="<c-j>"
    let g:UltiSnipsJumpForwardTrigger="<c-j>"
    let g:UltiSnipsJumpBackwardTrigger="<c-k>"

    " 文件管理
    Bundle 'scrooloose/nerdtree'
    let NERDTreeShowHidden = 0
    let g:netrw_winsize = 10
    nmap <silent> <leader>nt :NERDTree <CR>
    map <F3> :NERDTreeToggle<CR>
    nmap <silent> <leader>fe :Sexplore!<CR>

    " 缩进管理
    Bundle 'Indent-Guides'
    let g:indent_guides_start_level = 2
    let g:indent_guides_guide_size = 1
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_auto_colors     = 0

    " 状态栏美化，轻量级的powerline
    Bundle 'bling/vim-airline'
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''

    Bundle 'minibufexpl.vim'
    let g:miniBufExplMapWindowNavVim = 1
    let g:miniBufExplMapWindowNavArrows = 1
    let g:miniBufExplMapCTabSwitchBufs = 1
    let g:miniBufExplModSelTarget = 1

    Bundle 'vim-stylus'
    Bundle 'mattn/emmet-vim'
    Bundle 'ctrlp.vim'
    " 括号自动补全
    Bundle 'Raimondi/delimitMate'

    " 快速切换括号/引号或者标签
    Bundle 'tpope/vim-surround'
    
    " 批量注释，gc,gcc,gcu
    Bundle 'tpope/vim-commentary'
    autocmd FileType python,shell set commentstring=#\ %s
    autocmd FileType mako set cms=##\ %s

    Bundle 'ervandew/supertab'
    au FileType python set omnifunc=pythoncomplete#Complete
    let g:SuperTabDefaultCompletionType = "context"
    set completeopt=menuone,longest,preview

    Bundle 'kevinw/pyflakes-vim'
    let g:pyflakes_use_quickfix = 0

    Bundle 'fs111/pydoc.vim'

    " Bundle 'hdima/python-syntax'
    " Bundle 'nono/jquery.vim'
    Bundle 'Glench/Vim-Jinja2-Syntax'
    " Bundle 'scrooloose/syntastic'
    " Bundle 'rizzatti/funcoo.vim'
    " Bundle 'rizzatti/dash.vim'
    " Bundle 'einars/js-beautify'

    " 格式化
    " Bundle 'maksimr/vim-jsbeautify'
    " map <c-f> :call JsBeautify()<cr>
    " autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
    " autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
    " autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

    Bundle 'terryma/vim-multiple-cursors'

    filetype plugin indent on
