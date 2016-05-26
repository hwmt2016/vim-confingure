"=========================================================================

" DesCRiption: vimrc文件，for Linux/Windows, GUI/Console

" Maintainer:
"		Justin Ron
"		http://www.zygotee.com
"		admin@zygotee.com
"		https://github.com/justinron

" Last Change: 2015年03月30日

" Version:     1.0

"=========================================================================


set nocompatible            " 关闭 vi 兼容模式

"for vundle config start--------------------------------------------------
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'The-NERD-tree'
Plugin 'taglist.vim'
Plugin 'wesleyche/SrcExpl'
Plugin 'genutils'
Plugin 'lookupfile'
Plugin 'bling/vim-airline'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'EasyGrep'
Plugin 'scrooloose/nerdcommenter'
Plugin 'gcmt/wildfire.vim'
Plugin 'SuperTab'
Plugin 'flazz/vim-colorschemes'
Plugin 'justinron/snipmate.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'justinron/auto-pairs'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

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
"for vundle config end--------------------------------------------------

syntax on                   " 自动语法高亮

set expandtab               " 将制表符扩展为空格

let c_space_errors=1

"colorscheme molokai         " 设定配色方案
colorscheme desert
set number                  " 显示行号

set cursorline              " 突出显示当前行
set cursorcolumn            " 突出显示当前列

set ruler                   " 打开状态栏标尺

set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4

set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格

set tabstop=4               " 设定 tab 长度为 4

set nobackup                " 覆盖文件时不备份

set autochdir               " 自动切换当前目录为当前文件所在的目录

filetype plugin indent on   " 开启插件

set backupcopy=yes          " 设置备份时的行为为覆盖

set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感

set nowrapscan              " 禁止在搜索到文件两端时重新搜索

set incsearch               " 输入搜索内容时就显示搜索结果

set hlsearch                " 搜索时高亮显示被找到的文本

set noerrorbells            " 关闭错误信息响铃

set novisualbell            " 关闭使用可视响铃代替呼叫

set t_vb=                   " 置空错误铃声的终端代码

" set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号

" set matchtime=2             " 短暂跳转到匹配括号的时间

set magic                   " 设置魔术

set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存

set guioptions-=T           " 隐藏工具栏

set guioptions-=m           " 隐藏菜单栏

set smartindent             " 开启新行时使用智能自动缩进

set backspace=indent,eol,start

                            " 不设定在插入状态无法用退格键和 Delete 键删除回车符

set cmdheight=1             " 设定命令行的行数为 1

set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)

set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 

                            " 设置在状态行显示的信息

set foldenable              " 开始折叠

"set foldmethod=syntax       " 设置语法折叠

set foldcolumn=0            " 设置折叠区域的宽度

setlocal foldlevel=1        " 设置折叠层数为

" set foldclose=all           " 设置为自动关闭折叠                            

" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

                            " 用空格键来开关折叠



" return OS type, eg: windows, or linux, mac, et.st..

function! MySys()

    if has("win16") || has("win32") || has("win64") || has("win95")

        return "windows"

    elseif has("unix")

        return "linux"

    endif

endfunction



" 用户目录变量$VIMFILES

if MySys() == "windows"

    let $VIMFILES = $VIM.'/vimfiles'

elseif MySys() == "linux"

    let $VIMFILES = $HOME.'/.vim'

endif



" 设定doc文档目录

let helptags=$VIMFILES.'/doc'



" 设置字体 以及中文支持

if has("win32")

    set guifont=Inconsolata:h12:cANSI

endif



" 配置多语言环境

if has("multi_byte")

    " UTF-8 编码

    set encoding=utf-8

    set termencoding=utf-8

    set formatoptions+=mM

    set fencs=utf-8,gbk



    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'

        set ambiwidth=double

    endif



    if has("win32")

        source $VIMRUNTIME/delmenu.vim

        source $VIMRUNTIME/menu.vim

        language messages zh_CN.utf-8

    endif

else

    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"

endif

" 打开文件时，总是跳到退出之前的光标处
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\	exe "normal! g'\"" | endif

" Set mapleader
let mapleader=","

let g:ycm_global_ycm_extra_conf = '/home/justin/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'   "配置默认的ycm_extra_conf.py
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>     "按,jd 会跳转到定义
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_confirm_extra_conf=0    "打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件
let g:ycm_register_as_syntastic_checker = 0

" Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<CR>
" Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<CR>
" When .vimrc is edited, reload it
autocmd bufwritepost .vimrc source ~/.vimrc

" 启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim
" 定义:Man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>

" Buffers操作快捷方式!

nnoremap <C-RETURN> :bnext<CR>

nnoremap <C-S-RETURN> :bprevious<CR>


"-----------------------------------------------------------------
" snipMate Setting
"-----------------------------------------------------------------
" 1.remap the trigger key from <tab> to <C-\> for the confliction with SuperTab
" 2.should comment the trigger key configuration in snipMate/after/plugin/snipMate.vim
ino <silent> <C-\> <c-r>=TriggerSnippet()<cr>
snor <silent> <C-\> <esc>i<right><c-r>=TriggerSnippet()<cr>

" Tab操作快捷方式!

nnoremap <C-TAB> :tabnext<CR>

nnoremap <C-S-TAB> :tabprev<CR>



"关于tab的快捷键

" map tn :tabnext<cr>

" map tp :tabprevious<cr>

" map td :tabnew .<cr>

" map te :tabedit

" map tc :tabclose<cr>



"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动

"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的

"时候会变得非常方便.

nnoremap <C-h> <C-w>h

nnoremap <C-j> <C-w>j

nnoremap <C-k> <C-w>k

nnoremap <C-l> <C-w>l



"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）

nnoremap <leader>1 :set filetype=xhtml<CR>

nnoremap <leader>2 :set filetype=css<CR>

nnoremap <leader>3 :set filetype=javascript<CR>

nnoremap <leader>4 :set filetype=php<CR>



" set fileformats=unix,dos,mac

" nmap <leader>fd :se fileformat=dos<CR>

" nmap <leader>fu :se fileformat=unix<CR>



" use Ctrl+[l|n|p|cc] to list|next|previous|jump to count the result

" map <C-x>l <ESC>:cl<CR>

" map <C-x>n <ESC>:cn<CR>

" map <C-x>p <ESC>:cp<CR>

" map <C-x>c <ESC>:cc<CR>





" 让 Tohtml 产生有 CSS 语法的 html

" syntax/2html.vim，可以用:runtime! syntax/2html.vim

let html_use_css=1

"-----------------------------------------------------------------
" wildfire.vim设置: 结对文本选择
"-----------------------------------------------------------------
" This selects the next closest text object.
" map <SPACE> <Plug>(wildfire-fuel)
map <leader><SPACE> <Plug>(wildfire-fuel)
" This selects the previous closest text object.
" vmap <S-SPACE> <Plug>(wildfire-water)
vmap <BS> <Plug>(wildfire-water)
" By default, Wildfire selects any of the text objects i', i", i), i], i}, ip
" and it. You can decide the ones to consider with the following option:
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip", "it"]

" Python 文件的一般设置，比如不要 tab 等

autocmd FileType python set tabstop=4 shiftwidth=4 expandtab

autocmd FileType python map <F12> :!python %<CR>



" 选中状态下 Ctrl+c 复制

vmap <C-c> "+y



" 打开javascript折叠

let b:javascript_fold=1

" 打开javascript对dom、html和css的支持

let javascript_enable_domhtmlcss=1

" 设置字典 ~/.vim/dict/文件的路径

autocmd filetype javascript set dictionary=$VIMFILES/dict/javascript.dict

autocmd filetype css set dictionary=$VIMFILES/dict/css.dict

autocmd filetype php set dictionary=$VIMFILES/dict/php.dict



"-----------------------------------------------------------------

" plugin - bufexplorer.vim Buffers切换

" \be 全屏方式查看全部打开的文件列表

" \bv 左右方式查看   \bs 上下方式查看

"-----------------------------------------------------------------

"-----------------------------------------------------------------
" ctags database path设置
"-----------------------------------------------------------------
"	set tags=/local/linux-3.4.39/tags	"ctags DB为自己的路径


"-----------------------------------------------------------------
" cscope database path设置
"-----------------------------------------------------------------
	set csprg=/usr/bin/cscope		"cscope位置
	set csto=0						"cscope DB search first
	set cst							"cscope DB tag DB search
	set nocsverb					"verbose off

	" cscope DB位置设置, 使用绝对路径
"	cs add /local/linux-3.4.39/cscope.out
	set csverb						"verbose off

" 实现对上级目录中的ctags和cscope的目录递归查找和自动载入
function! AutoLoadTagsAndCscope()
	let max = 15
	let dir	= './'
	let i = 0
	let break = 0
	while isdirectory(dir) && i < max
		if filereadable(dir . 'cscope.out')
			execute 'cs add ' . dir . 'cscope.out'
			let break = 1
		endif
		if filereadable(dir . 'tags')
			execute 'set tags =' . dir . 'tags'
			let break = 1
		endif
		if break == 1
			execute 'lcd' . dir
			break
		endif
		let dir = dir . '../'
		let i = i + 1
	endwhile
endf
nmap <F7> :call AutoLoadTagsAndCscope()<CR>
call AutoLoadTagsAndCscope()

" 在指定目录生成filenametags，并使lookupfile将这个文件作为查找源
function! SetRootOfTheProject(path)
	" 进入指定目录
	exe 'cd '.a:path
	" 生成文件标签
	exe '!genfiletags'
	" 获取标签文件的路径
	let tagFilePath = genutils#CleanupFileName(a:path.'/filenametags')
	" 设置LookupFile插件的全局变量，使之以上面生成的标签文件作为查找源
	exe "let g:LookupFile_TagExpr='\"".tagFilePath."\"'"
endfunction
" 设置当前位置为工程的根目录
function! SetHereTheRoot()
	call SetRootOfTheProject('.')
endfunction
nmap <leader>root :call SetHereTheRoot()<CR>
" 从用户的输入获取指定路径，并设置为工程的根目录
function! SetSpecifiedPathTheRoot()
	call SetRootOfTheProject(input('请输入工程根目录的路径：'))
endfunction
nmap <leader>z :call SetSpecifiedPathTheRoot()<CR>
                                                  
" 使用LookupFile打开文件
"nmap <leader>o :LookupFile<CR>
"nmap <unique> <silent> <F6> <Plug>LookupFile
nmap <silent> <F6> <Plug>LookupFile

" lookup file with ignore case
function! LookupFile_IgnoreCaseFunc(pattern)
	let _tags = &tags
    try
	    let &tags = eval(g:LookupFile_TagExpr)
        let newpattern = '\c' . a:pattern
        let tags = taglist(newpattern)
    catch
	    echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
        return ""
    finally
        let &tags = _tags
    endtry

	" Show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'

"""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")                "设置tag文件的名字
let g:LookupFile_TagExpr = '"./filenametags"'
endif
"映射LookupFile为,lk -------项目文件查找
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll     -------缓冲区查找
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw     -------浏览目录
nmap <silent> <leader>lw :LUWalk<cr>

"-----------------------------------------------------------------

" plugin - FuzzyFinder

"-----------------------------------------------------------------

map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>g :FufTag<CR>
map <leader>b :FufBuffer<CR>

"-----------------------------------------------------------------

" plugin - ctrlp

"-----------------------------------------------------------------
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:100'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 0  "不限制最大文件数
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename = 0
let g:ctrlp_open_multiple_files = 'v'
"let g:ctrlp_user_command = 'find %s -type f'
set wildignore+=*/tmp/*,*.so,*.swp,*.cmd,*.o,*.zip " MacOSX/Linux

"-----------------------------------------------------------------

" plugin - vim-airline

"-----------------------------------------------------------------
set t_Co=256
set laststatus=2
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>
" switch to previous buffer
map <leader>, :bp<CR>
" switch to next buffer
map <leader>. :bn<CR>
" 关闭当前所在buffer
map <leader>d :bdelete<CR>
" 切换到之前所在的buffer
map <leader><TAB> :b #<CR>

"-----------------------------------------------------------------

" plugin - taglist.vim  查看函数列表，需要ctags程序

" F4 打开隐藏taglist窗口

"-----------------------------------------------------------------

if MySys() == "windows"                " 设定windows系统中ctags程序的位置

    let Tlist_Ctags_Cmd = '"'.$VIMRUNTIME.'/ctags.exe"'

elseif MySys() == "linux"              " 设定windows系统中ctags程序的位置

    let Tlist_Ctags_Cmd = '/usr/bin/ctags'

endif


"-----------------------------------------------------------------
" Tag List环境设置
"-----------------------------------------------------------------

	filetype on							"vim filetype on
	"nnoremap <silent><F4> :TlistToggle<CR>
	nmap <F4> :TlistToggle<CR>			"F4 Key = Tag List Toggling
	let Tlist_Ctags_Cmd = "/usr/bin/ctags"	"ctags程序位置
	let Tlist_Inc_Winwidth = 0				"window width change off
											"window close = off
	let Tlist_Auto_Open = 0					"vim开始时window open=off
	let Tlist_Use_Right_Window = 1			"vim开始时window open=off
	let Tlist_WinWidth = 30					"设置taglist宽度
	let Tlist_Show_One_File = 1            " 不同时显示多个文件的tag，只显示当前文件的

	let Tlist_Exit_OnlyWindow = 1          " 如果taglist窗口是最后一个窗口，则退出vim

	let Tlist_Use_Right_Window = 1         " 在右侧窗口中显示taglist窗口

	let Tlist_File_Fold_Auto_Close=1       " 自动折叠当前非编辑文件的方法列表

	let Tlist_Auto_Update = 1

	let Tlist_Hightlight_Tag_On_BufEnter = 1

	let Tlist_Enable_Fold_Column = 0

	let Tlist_Process_File_Always = 1

	let Tlist_Display_Prototype = 0

	let Tlist_Compact_Format = 1

	
"-----------------------------------------------------------------
" Source Explorer环境设置
"-----------------------------------------------------------------
	nmap <F5> :SrcExplToggle<CR>			"F5 Key = SrcExpl Toggling
	nmap <C-H> <C-W>h						"向左侧窗口移动
	nmap <C-J> <C-W>j						"向下端窗口移动
	nmap <C-K> <C-W>k						"向上端窗口移动
	nmap <C-L> <C-W>l						"向右侧窗口移动

	let g:SrcExpl_winHeight = 12				"指定SrcExpl Windows高度
	let g:SrcExpl_refreshTime = 100			"refreshing time = 100ms
	let g:SrcExpl_jumpKey = "<ENTER>"		"跳转（jump）至相应定义definition
	let g:SrcExpl_gobackKey = "<SPACE>"		"back
	let g:SrcExpl_isUpdateTags = 0			"tag file update = off
    let g:SrcExpl_prevDefKey = "<F11>"      "Set "<F11>”key for displaying the previous definition in the jump list
    let g:SrcExpl_nextDefKey = "<F12>"      "Set "<F12>”key for displaying the next definition in the jump list

":cs find {querytype} {name}

"其中：

"{querytype} 即相对应于实际的cscope行接口数字，同时也相对应于nvi命令：
"
"       0或者s   —— 查找这个C符号
"
"       1或者g  —— 查找这个定义
"
"       2或者d  —— 查找被这个函数调用的函数（们）
"
"       3或者c  —— 查找调用这个函数的函数（们）
"
"       4或者t   —— 查找这个字符串
"
"       6或者e  —— 查找这个egrep匹配模式
"
"       7或者f   —— 查找这个文件
"
"       8或者i   —— 查找#include这个文件的文件（们）
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>


"-----------------------------------------------------------------

" plugin - mark.vim 给各种tags标记不同的颜色，便于观看调式的插件。

" \m  mark or unmark the word under (or before) the cursor

" \r  manually input a regular expression. 用于搜索.

" \n  clear this mark (i.e. the mark under the cursor), or clear all highlighted marks .

" \*  当前MarkWord的下一个     \#  当前MarkWord的上一个

" \/  所有MarkWords的下一个    \?  所有MarkWords的上一个

"-----------------------------------------------------------------





"-----------------------------------------------------------------

" plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录

" :ERDtree 打开NERD_tree         :NERDtreeClose    关闭NERD_tree

" o 打开关闭文件或者目录         t 在标签页中打开

" T 在后台标签页中打开           ! 执行此文件

" p 到上层目录                   P 到根目录

" K 到第一个节点                 J 到最后一个节点

" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作）

" r 递归刷新当前目录             R 递归刷新当前根目录

"-----------------------------------------------------------------

" F3 NERDTree 切换

map <F3> :NERDTreeToggle<CR>

imap <F3> <ESC>:NERDTreeToggle<CR>





"-----------------------------------------------------------------

" plugin - NERD_commenter.vim   注释代码用的，

" [count],cc 光标以下count行逐行添加注释(7,cc)

" [count],cu 光标以下count行逐行取消注释(7,cu)

" [count],cm 光标以下count行尝试添加块注释(7,cm)

" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释。

" 注：count参数可选，无则默认为选中行或当前行

"-----------------------------------------------------------------

let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格

let NERDCompactSexyComs=1   " 多行注释时样子更好看





"-----------------------------------------------------------------

" plugin - DoxygenToolkit.vim  由注释生成文档，并且能够快速生成函数标准注释

"-----------------------------------------------------------------

let g:DoxygenToolkit_authorName="Asins - asinsimple AT gmail DOT com"

let g:DoxygenToolkit_briefTag_funcName="yes"

map <leader>da :DoxAuthor<CR>

map <leader>df :Dox<CR>

map <leader>db :DoxBlock<CR>

map <leader>dc a /*  */<LEFT><LEFT><LEFT>





"-----------------------------------------------------------------

" plugin – ZenCoding.vim 很酷的插件，HTML代码生成

" 插件最新版：http://github.com/mattn/zencoding-vim

" 常用命令可看：http://nootn.com/blog/Tool/23/

"-----------------------------------------------------------------





"-----------------------------------------------------------------

" plugin – checksyntax.vim    JavaScript常见语法错误检查

" 默认快捷方式为 F5

"-----------------------------------------------------------------

let g:checksyntax_auto = 0 " 不自动检查





"-----------------------------------------------------------------

" plugin - NeoComplCache.vim    自动补全插件

"-----------------------------------------------------------------

let g:AutoComplPop_NotEnableAtStartup = 1

let g:NeoComplCache_EnableAtStartup = 1

let g:NeoComplCache_SmartCase = 1

let g:NeoComplCache_TagsAutoUpdate = 1

let g:NeoComplCache_EnableInfo = 1

let g:NeoComplCache_EnableCamelCaseCompletion = 1

let g:NeoComplCache_MinSyntaxLength = 3

let g:NeoComplCache_EnableSkipCompletion = 1

let g:NeoComplCache_SkipInputTime = '0.5'

let g:NeoComplCache_SnippetsDir = $VIMFILES.'/snippets'

" <TAB> completion.

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" snippets expand key

imap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)

smap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)





"-----------------------------------------------------------------

" plugin - matchit.vim   对%命令进行扩展使得能在嵌套标签和语句之间跳转

" % 正向匹配      g% 反向匹配

" [% 定位块首     ]% 定位块尾

"-----------------------------------------------------------------





"-----------------------------------------------------------------

" plugin - vcscommand.vim   对%命令进行扩展使得能在嵌套标签和语句之间跳转

" SVN/git管理工具

"-----------------------------------------------------------------





"-----------------------------------------------------------------

" plugin – a.vim

"-----------------------------------------------------------------
