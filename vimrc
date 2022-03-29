
set nocompatible
set nu!             " 显示行号
syntax enable
syntax on
set t_Co=256
" colorscheme molokai

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set autowrite   " 自动保存

set foldmethod=syntax
set foldlevel=100  " 启动vim时不要自动折叠代码
set textwidth=80
set formatoptions+=t
set cindent
set smartindent
set noerrorbells
set showmatch
set nobackup 
set noswapfile
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set list

set mouse=
" 设置默认进行大小写不敏感查找
set ignorecase
"如果有一个大写字母，则切换到大小写敏感查找
set smartcase
"字符串搜索高亮显示
set hlsearch
"高亮不跳转
" nnoremap <leader>* :<C-u>let @/ = expand('<cword>')<cr> 


"set listchars=tab:>-,trail:-,space:·,eol:
"set listchars=tab:>-,trail:-,space:·
set listchars=tab:>-
set backspace=indent,eol,start



"setting vps/sp's would open new file int the right/down of old file.
set splitright
set splitbelow

"字符串搜索高亮显示
set hlsearch
" nnoremap <leader>* :<C-u>let @/ = expand('<cword>')<cr>

" 支持在Visual模式下，通过C-y复制到系统剪切板
vnoremap <C-y> "+y
" 支持在normal模式下，通过C-p粘贴系统剪切板
" nnoremap <C-p> "+p


set ruler
set nowrap
set showcmd
set history=100
set cursorline
set cursorcolumn
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE



highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=black

" set cursorline

" disable 
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" remap control + arrow key to select windows
noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" ==============Vundle插件管理==============
" Vundle manage
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar' " Tag bar"
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline' | Plugin 'vim-airline/vim-airline-themes' " Status line"
Plugin 'jiangmiao/auto-pairs'
Plugin 'mbbill/undotree'
Plugin 'gdbmgr'
" Plugin 'scrooloose/nerdcommenter'
Plugin 'preservim/nerdcommenter'
Plugin 'Yggdroot/indentLine' " Indentation level"
Plugin 'bling/vim-bufferline' " Buffer line"
"Plugin 'kepbod/quick-scope' " Quick scope
Plugin 'yianwillis/vimcdoc'
Plugin 'nelstrom/vim-visual-star-search'
"Plugin 'ludovicchabant/vim-gutentags'
Plugin 'w0rp/ale'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'mbbill/echofunc'
Plugin 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'DoxygenToolkit.vim' "添加 Doxygen 风格的注释


"werLine插件 状态栏增强展示
"Bundle 'Lokaltog/vim-powerline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" 常用的命令
" " :PluginList       - 列出所有已配置的插件
" " :PluginInstall       - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" " :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" " :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插
" vim +PluginInstall +qall


"select vim-airline-themes
"let g:airline_theme="molokai" 

" ============DoxygenToolkit===============
let g:DoxygenToolkit_briefTag_post = "<++>"
let g:DoxygenToolkit_briefTag_funcName = "yes"
let g:DoxygenToolkit_commentType = "C"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
" 注释快首尾
let g:DoxygenToolkit_blockHeader="*******************************************************" 
let g:DoxygenToolkit_blockFooter="*******************************************************" 
" 作者
let g:DoxygenToolkit_authorName="yuweici@tenda.cn"

let g:DoxygenToolkit_versionTag = "@version 0.1"

let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_briefTag_post = "<++>"
let g:DoxygenToolkit_briefTag_funcName = "yes"

" Lincese
let g:DoxygenToolkit_licenseTag = "Copyright (C) 2018 http://mounui.com\<enter>\<enter>Call Center On Demand Product Series\<enter>If you have any questions, please contact me at my blog. \<enter>All right reserved\<enter>\<enter>$$\<enter>TODO:\<enter>\<enter>*******************************************************"

map <F2>a :DoxAuthor

map <F2>f :Dox

map <F2>b :DoxBlock

map <F2>c O/** */<Left><Left>



" ==============YCM==============
"let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
" let g:ycm_enable_diagnostic_signs = 0
" let g:ycm_enable_diagnostic_highlighting = 0
" 
" let g:ycm_error_symbol = 'E'
" let g:ycm_warning_symbol = 'O'

  " YCM 查找定义
let mapleader=','
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_collect_identifiers_from_tags_files = 1

set completeopt=menu,menuone   
let g:ycm_add_preview_to_completeopt = 0  " 关闭函数原型提示

let g:ycm_show_diagnostics_ui = 0 " 关闭诊断信息
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2  " 两个字符触发 补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 收集
let g:ycm_complete_in_strings=1

noremap <c-z> <NOP>
let g:ycm_key_invoke_completion = '<c-z>'   " YCM 里触发语义补全有一个快捷键
let g:ycm_max_num_candidates = 10   "15"" 候选数量

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }


""" ===========gutentags=============
"" 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
"let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project', '.gitignore']

"" 添加ctags额外参数，会让tags文件变大
"" let g:gutentags_ctags_extra_args = ['--fields=+niazlS', '--extra=+q']
" let g:gutentags_ctags_extra_args = ['--fields=+lS']
"" let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
"" let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
"
"if isdirectory("kernel/") && isdirectory("mm/")
"	let g:gutentags_file_list_command = 'find arch/arm/ mm/ kernel/ include/ init/ lib/'
"endif
	

"==================== 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>

" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>

hi MBENormal               guifg=#808080 guibg=fg
hi MBESelecting            guifg=#BEEF13 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg

" =======echodoc 显示函数参数===========
" ctags -R --fields=+lS .

"设置tagbar的窗口宽度
let g:tagbar_width=30
"设置tagbar的窗口显示的位置,为左边
let g:tagbar_right=1
"打开文件自动 打开tagbar
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.sh call tagbar#autoopen()
map <C-c> :TagbarToggle<CR>


"======= NetRedTree=========
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeWinSize=30
"let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowBookmarks=1
let g:NERDTreeShowLineNumbers=1  " 是否显示行号"
"关闭最后窗口，tree自动关闭
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif
" 设置NerdTree 按F3打开或关闭NERDTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" 在tree中定位当前文件
nnoremap <C-f> :NERDTreeFind<CR>

"git信息直接在NERDTree中显示出来
let g:NERDTreeGitStatusIndicatorMapCustom= {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

let g:winManagerWindowLayout='TagList'
nmap wm :WMToggle<cr>

" ======ALE静态语法检测========
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = 'w'
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
"let g:airline#extensions#ale#enabled = 1
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

" ========airline状态栏=========  
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%-0.10{getcwd()}'
let g:airline_section_c = '%t'
let g:airline#extensions#tagbar#enabled = 1
let g:airline_section_y = ''

"" ========powerline=========
"set laststatus=2
"set t_Co=256
"let g:Powline_symbols='fancy'
"set nocompatible
"set enc=utf-8
"let termencoding=&encoding
"set fileencodings=utf-8,gbk,ucs-bom,cp936
"set guifont=Ubuntu\ Mono\ for\ Powerline\ 12




"--------------------------------------------------------------------------------
" cscope:建立数据库：cscope -Rbq；  F5 查找c符号； F6 查找字符串；   F7 查找函数定义； F8 查找函数谁调用了，
"--------------------------------------------------------------------------------
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif


:set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>


"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"F5 查找c符号； F6 查找字符串；   F7 查找函数定义； F8 查找函数谁调用了，
nmap <silent> <F5> :cs find s <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR> 
nmap <silent> <F6> :cs find t <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR>
"nmap <silent> <F7> :cs find g <C-R>=expand("<cword>")<CR><CR> 
nmap <silent> <F7> :cs find c <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR>


 "--------------------------------------------------------------------------------
"  自动加载ctags: ctags -R
if filereadable("tags")
      set tags=tags
endif

"--------------------------------------------------------------------------------
" global:建立数据库
"--------------------------------------------------------------------------------
if filereadable("GTAGS")
	set cscopetag
	set cscopeprg=gtags-cscope
	cs add GTAGS
	au BufWritePost *.c,*.cpp,*.h silent! !global -u &
endif


set tabstop=4       " Tab键替换的空格长度，默认8
set softtabstop=4   " 退格键退回缩进空格的长度
set shiftwidth=4    " 表示每一级缩进的长度
set expandtab       " 设置缩进用空格来表示

set autoindent      " 自动缩进

"设置复制模式快捷键
set pastetoggle=<f12>
