"
" gd 跳转到当前光标所在单词的首次出现位置(如果是在模块内则跳转到模块内的首次出现处,eg:函数内)
" :set tags+=/path/to/tst/tags
" :cs add /path/to/tst/cscope.out /path/to/tst
"
"添加包围符号：
" 1. 选中文本，然后按下S键，接着输入要添加的包围符号，比如(、{或"等。
" 2. 在普通模式下，将光标移动到要包围的文本周围，然后按下cs命令，接着输入要更改的包围符号。
" 3. 修改包围符号：
" 在普通模式下，将光标移动到包围符号的起始位置，然后按下cst命令，接着输入新的包围符号。
" 4. 删除包围符号：
" 选中文本，然后按下S键，接着输入空格，即可删除包围符号。
" 在普通模式下，将光标移动到包围符号的起始位置，然后按下ds命令，即可删除包围符号。
"
"
" 1. 在插入模式下: <ctrl+r>" 编辑模式粘贴对应寄存器的内容
"
" 2. 输入待命模式（Insert Normal Mode）：在插入模式下，按下 "Ctrl + O" 键可以进入输入待命模式。在该模式下，你可以执行一些普通模式的命令，而不必退出插入模式。
"
" 3. ge跳到上一个单词的末尾
"
" 4. 替换
" :%s/foo/bar/g 全文替换
" :s/foo/bar/g 改行替换
"
" 查找当前单词 # *
"
" sudo apt install global ----> gtags + :tag
"
"
" mM ---> `M 全局标记与跳转
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
set nocompatible
set nu!             " 显示行号
syntax enable
syntax on
set t_Co=256
" colorscheme molokai

let g:solarized_termcolors=256
set background=dark
colorscheme solarized
" colorscheme molokai

set autowrite   " 自动保存

set wrap " 自动换行
" set nowrap

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
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set list

set mouse=
" 设置默认进行大小写不敏感查找
set ignorecase
"如果有一个大写字母，则切换到大小写敏感查找
set smartcase

"字符串搜索高亮显示
"set hlsearch
set nohlsearch
set incsearch
"高亮不跳转
"nnoremap <leader>* :<C-u>let @/ = expand('<cword>')<cr> 


"set listchars=tab:>-,trail:-,space:·,eol:
"set listchars=tab:>-,trail:-,space:·
set listchars=tab:>-
set backspace=indent,eol,start



"setting vps/sp's would open new file int the right/down of old file.
set splitright
set splitbelow

set ruler
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

let mapleader=','
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 定义快捷键到行首和行尾
nmap LB ^
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap <Leader>nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

"" 定义快捷键在结对符之间跳转
nmap <Leader>M %


" 
"set nofoldenable
set foldmethod=manual



"
"noremap L <Nop>

" vim再次进入后还能回退之前进入的修改, 他会在undodir指定目录记录文件的修改 
" 注意此文件大小
"set undofile
"set undodir=~/.vim/undo

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
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'w0rp/ale'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'mbbill/echofunc'
Plugin 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'DoxygenToolkit.vim' "添加 Doxygen 风格的注释
Plugin 'tpope/vim-commentary'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-user'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/matchit.zip'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" 常用的命令
" " :PluginList       - 列出所有已配置的插件
" " :PluginInstall       - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" " :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" " :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插
" vim +PluginInstall +qall



" ============================ surround ===================
" S命令：将所选文本包围在新的括号中。例如，选择文本后执行S(将文本用圆括号包围起来。
" cs命令：更改包围符号。例如，选择文本后执行cs'"将文本的单引号包围符号更改为双引号。
" ds命令：删除包围符号。例如，选择包围在引号中的文本后执行ds"将删除引号。
" 这只是一些示例命令，tpope/vim-surround插件提供了更多命令和功能。你可以查看插件的文档或说明来了解更多详细信息。


" ============================matchit===================
runtime macros/matchit.vim


" ============================CtrlP Configuration===================
let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'


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
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_collect_identifiers_from_tags_files = 1

set completeopt=menu,menuone   
let g:ycm_add_preview_to_completeopt = 0  " 关闭函数原型提示
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_echo_current_diagnostic = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2  " 两个字符触发 补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 " 收集
let g:ycm_complete_in_strings=0

"noremap <c-z> <NOP>
"let g:ycm_key_invoke_completion = '<c-z>'   " YCM 里触发语义补全有一个快捷键
"let g:ycm_key_invoke_completion = '<Tab>'   " YCM 里触发语义补全有一个快捷键
let g:ycm_max_num_candidates = 15   "15"" 候选数量

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }


"" ===========gutentags=============
" 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project', '.gitignore']

" 添加ctags额外参数，会让tags文件变大
let g:gutentags_ctags_extra_args = ['--fields=+KniazlS', '--extra=+q']
" let g:gutentags_ctags_extra_args = ['--fields=+lS']
let g:gutentags_ctags_extra_args = ['--c-kinds=+x']
" let g:gutentags_ctags_extra_args += ['--c++-kinds=+x']

" ctags不包括函数原型, 不然ctrl+]回跳到原型哪里去
" let g:gutentags_ctags_extra_args += ['--c++-kinds=+p']
" let g:gutentags_ctags_extra_args += ['--c-kinds=+p']

if isdirectory("kernel/") && isdirectory("mm/")
	let g:gutentags_file_list_command = 'find arch/arm/ mm/ kernel/ include/ init/ lib/'
endif
	

"==================== 显示/隐藏 MiniBufExplorer 窗口
"
" 打开 Vim 时自动开启 MiniBufExplorer
" autocmd VimEnter * silent! MiniBufExplorer


" 将 MiniBufExplorer 窗口默认放置在屏幕最下方
" let g:miniBufExplVSplit = 30    " 设置 MiniBufExplorer 窗口的宽度
let g:miniBufExplSplitBelow = 1 " 将 MiniBufExplorer 窗口放置在下面
let g:miniBufExplSplitRight = 0
" let g:miniBufExplPosition = 's' " 设置 MiniBufExplorer 窗口的位置为屏幕最下方
" let g:miniBufExplHeight = 10    " 设置 MiniBufExplorer 窗口的高度为 10 行

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
let g:Powerline_colorscheme='solarized256'






""" ========================================tagbar=============
"设置tagbar的窗口宽度
let g:tagbar_width=30
"设置tagbar的窗口显示的位置,为左边
"let g:tagbar_right=1
let g:tagbar_left=1
"打开文件自动 打开tagbar
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.sh call tagbar#autoopen()
map <C-c> :TagbarToggle<CR>


"=================================== NetRedTree=========
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeWinSize=42
"let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowBookmarks=1
let g:NERDTreeShowLineNumbers=1  " 是否显示行号"

"窗口放在右边
let g:NERDTreeWinPos = "right"

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

autocmd VimEnter * wincmd w
"autocmd VimEnter * silent! execute 'NERDTree' | wincmd w
"关闭最后窗口，tree自动关闭
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

" 设置NerdTree 按F5打开或关闭NERDTree
map <F5> :NERDTreeMirror<CR>
map <F5> :NERDTreeToggle<CR>

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
"nmap wm :WMToggle<cr>

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


" ============vim-commentary============"
"vim-commentary
"为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
autocmd FileType java,c,cpp set commentstring=//\ %s

" gcc     注释当前行（普通模式）
" gc      可视模式下，注释当前选中的部分
" gcu     撤销上一次注释的部分，可以是一行也可以是多行
" gcgc    撤销注释当前行和邻近的上下两行


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

      " 自动更新 cscope 数据库并清空原有数据库
      function! UpdateCscope()
          silent! !cscope -Rbq
          silent cs reset
      endfunction
      autocmd BufWritePost *.{c,h} call UpdateCscope()
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
" nmap <silent> <F5> :cs find s <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR> 
" nmap <silent> <F6> :cs find t <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR>
" nmap <silent> <F7> :cs find g <C-R>=expand("<cword>")<CR><CR> 
" nmap <silent> <F8> :cs find c <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR>

"F1 查找c符号； F2 查找字符串；   F3 查找函数定义； F4 查找函数谁调用了，
noremap <F1> <Nop>
noremap <F2> <Nop>
noremap <F3> <Nop>
noremap <F4> <Nop>

nmap <silent> <F1> :cs find s <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR> 
nmap <silent> <F2> :cs find t <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR>
nmap <silent> <F3> :cs find g <C-R>=expand("<cword>")<CR><CR> 
nmap <silent> <F4> :cs find c <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR>

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
	silent cs add GTAGS
	au BufWritePost *.c,*.cpp,*.h silent! !global -u &
endif


"Reinit all connections, 更新cscope数据库
nnoremap <Leader>r :silent cs reset<CR><CR>



set tabstop=4       " Tab键替换的空格长度，默认8
set softtabstop=4   " 退格键退回缩进空格的长度
set shiftwidth=4    " 表示每一级缩进的长度
set expandtab       " 设置缩进用空格来表示

set autoindent      " 自动缩进

"设置复制模式快捷键
set pastetoggle=<f12>

