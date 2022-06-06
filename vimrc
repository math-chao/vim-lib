"设置字体
set guifont=Consolas:h12:cANSI

"设置搜索高亮 ，取消请使用set nohlsearch
set hlsearch

" 关闭 .swp 文件
set noswapfile

" 显示行号；取消显示可输入 set nonu
set number

" 突出显示当前行
set cursorline

"去掉讨厌的有关 vim 一致性模式,避免以前版本的一些 bug 和局限.
set nocompatible

"否则无法使用退格键
set backspace=indent,eol,start

"开启语法高亮
syntax on

"设置命令历史记录为10条.
set history=100

"设置替换 tab 键 [缩进]
set expandtab

"设置 tab 键为4个空格.
set tabstop=4
set softtabstop=4

"设置当行之间交错时使用4个空格
set shiftwidth=4

"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"搜索选项.(比如,键入"/bo",光标自动找到第一个"bo"所在的位置.)
set noincsearch

"字符集
set fileencodings=ucs-bom,utf-8,chinese,cp936

let g:go_version_warning = 0

"依据上面的对起格式，智能的选择对起方式，对于类似C语言编.
"set smartindent
"自动缩进
"set autoindent
"C风格缩进
set cindent

"设置文件类型
" set filetype=php
set filetype=go
"set filetype=html

" 用空格键来开关代码折叠
set foldenable
" 手动折叠代码
" set foldmethod=manual
" 按缩进自动折叠代码
" set foldmethod=indent
" 按语法高亮折叠代码
" set foldmethod=syntax
" 按标记折叠代码
set foldmethod=marker

" Vim has a setting called autowrite that writes the content of the file automatically if you call :make
set autowrite

" 设置替换输入，比如通过一下配置，可以通过输入 w3c + 回车，输入后面 HTML 基本模板内容
ab w3c <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><ESC>o<html     xmlns="http://www.w3.org/1999/xhtml"><CR><head><CR><title>1</title><CR><meta http-equiv="Content-Type" content="text/html; charset=utf-8">    <CR><script src="http://cdn.bootcss.com/jquery/3.0.0-beta1/jquery.min.js" type="text/javascript"></script><CR><style><CR>body,ul,ol,li,p,h1    ,h2,h3,h4,h5,h6,form,fieldset,td,img,div{margin:0;padding:0;border:0;}<CR>/*,table notice:The table we often usered by develop so we exeges    is,if you publish you software please move on top of style css*/<CR>body{margin-top:0px;}<CR>ul,ol{list-style-type:none;}<CR>select,input,i    mg,select{vertical-align:middle;}<CR>.clearit{clear:both;}<CR></style><CR><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><CR>    </head><CR><body><CR></body><CR></html><ESC>kO

"快捷键配置
"设置用户快捷键的前置输入为 ,
let mapleader = ","

" 插件开始的位置
" 安装 vim-plug curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plug')
set encoding=UTF-8
" 此处放准备安装的插件

" 主题配色
Plug 'morhetz/gruvbox'
" 状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plug 'vim-airline/vim-airline'
" 状态栏目插件的主题，使用后可以使颜色看起来更加突出一点
Plug 'vim-airline/vim-airline-themes'
" 可以在导航中显示图标， 不过需要有字体支持，否则就是乱码
" https://github.com/ryanoasis/nerd-fonts
" 终端也需要字体配合，如我使用的是 firacode nerd font Regular
" 喜欢其他字体也可以，不过要使用带 nerd font 的字体
" Plug 'ryanoasis/vim-devicons'
" 可以在文档中显示 git 信息
Plug 'airblade/vim-gitgutter'
" markdown 预览
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" markdown 中 latex 数学公式支持
" Plug 'iamcco/mathjax-support-for-mkdp'

Plug 'fatih/vim-go'
" 不生效，需要再看看
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'Blackrush/vim-gocode'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"github
"项目中字符或者函数名查找
Plug 'relunctance/govim-find-func'

"超级注释插件
Plug 'tpope/vim-commentary'

" PHP 断点调试插件
Plug 'vim-vdebug/vdebug'

" 插件结束的位置，插件全部放在此行上面
call plug#end()

"-------------------------------------vdebug------------------------------------------
let g:vdebug_options = {
\    'timeout' : 200,
\    'server' : '',
\    'port' : 9100,
\    'on_close' : 'stop',
\    'break_on_open' : 1,
\    'ide_key' : '',
\    'debug_window_level' : 0,
\    'debug_file_level' : 0,
\    'debug_file' : '',
\    'path_maps' : {'{serverpath}': '{localpath}'},
\    'watch_window_style' : 'expanded',
\    'marker_default' : '⬦',
\    'marker_closed_tree' : '▸',
\    'marker_open_tree' : '▾',
\    'sign_breakpoint' : '▷',
\    'sign_current' : '▶',
\    'continuous_mode'  : 1,
\    'simplified_status': 1,
\    'layout': 'vertical',
\}

" let g:vdebug_keymap = {
" \    "run" : "<F5>",
" \    "run_to_cursor" : "<F9>",
" \    "step_over" : "<F2>",
" \    "step_into" : "<F3>",
" \    "step_out" : "<F4>",
" \    "close" : "<F6>",
" \    "detach" : "<F7>",
" \    "set_breakpoint" : "<F10>",
" \    "get_context" : "<F11>",
" \    "eval_under_cursor" : "<F12>",
" \    "eval_visual" : "<Leader>e",
" \}
"
let g:vdebug_keymap = {
\    "run" : "<Leader>/",
\    "step_over" : "3",
\    "run_to_cursor" : "4",
\    "step_into" : "5",
\    "step_out" : "6",
\    "detach" : "7",
\    "eval_under_cursor" : "8",
\    "eval_visual" : "9",
\    "close" : "0",
\    "set_breakpoint" : "<Leader>b",
\    "get_context" : "<leader>c"
\}

"-------------------------------------vim-go------------------------------------------
" https://github.com/fatih/vim-go
" https://github.com/fatih/vim-go-tutorial  # vim-go 官方教程，最好过一遍
"
" :GoInstallBinaries 安装 vim-go 所需工具
" :GoDecls 函数搜索
" :GoDeclsDir 函数搜索
" :GoDef (或ctrl+]) 跳转到定义，但是如果是接口实现只能跳转到 interface 定义而非 struct 实现。
" 跳转到接口的实现 https://github.com/fatih/vim-go/issues/820
" :GoCallees 从函数调用处跳转到接口的真正实现，而不是接口定义 (在方法调用点使用 -> struct 方法实现列表)
" :GoCallers 找到当前函数被调用的地点
" :GoImplements 列出 struct 实现的接口

" # 常用的方便命令(命令模式Tab补全), 参考 https://github.com/fatih/vim-go/blob/master/doc/vim-go.txt
" :GoRun, GoTest, GoTestFunc 运行代码和单测
" :GoImpl 为 struct 生成接口函数定义(光标放到struct定义上使用)。如果一个 interface 有很多需要实现的函数，比较方便
" :GoAddTags GoRemoveTags json 快速给 struct field 增加 json tag，支持 visual 模式多选。默认 tag 名是下划线命名
" :GoKeyify 把无名称初始化的 struct literals 转成包含字段名的初始化方式
" :GoIfErr 生成 if err 返回值(或者用 snippets)
" :GoChannelPeers 寻找可能的 channel 发送和接收点
" :GoFillStruct 给一个 struct 填充默认值
"
" :GoRename 快速重构, 修改函数，field 名
" :GoFreevars 查看选中区域的自由变量
" :GoGenerate 运行 go generate
"
" let g:go_def_mode='godef'  # 有时候 gopls 有问题可以用 godef 跳转，默认用 gopls
" let g:go_def_mode = 'godef'
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_decls_includes = "func,type"
" 自动显示函数信息
let g:go_auto_type_info = 1
set updatetime=100

" 开启自动寻找
let g:go_auto_sameids = 0

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>

autocmd FileType go nmap <leader>gt <Plug>(go-test)
autocmd FileType go nmap <leader>gtf <Plug>(go-test-func)
autocmd FileType go nmap <Leader>i <Plug>(go-describe)

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
"Text objects
"if 函数内快
"af 函数外快
"
"-------------------------------------AndrewRadev/splitjoin.vim------------------------------------------
"Now type gS. This will split the struct expression into multiple lines.
"And you can even reverse it. If your cursor is still on the foo variable, execute gJ in normal mode.
" ======================== 主题配色设置 ===========================
" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
" 主题配色
colorscheme gruvbox
" 主题背景 dark-深色; light-浅色
set background=dark
"颜色方案
"colorscheme   desert
"colorscheme  peachpuff
"colorscheme  molokai
"colorscheme  ron
"colorscheme  default
"colorscheme  delek
" =================================================================
"
"
"======================== vim-airline 插件配置 ===================
" 状态栏目使用主题， 还可以使用 dark， simple， solarized light 等
" 更多主题 https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='dark'
" 安装字体后，启用这个选项后在状态栏可以看到图标
" 需要先安装 powerline 字体才可以 sudo apt-get install fonts-powerline
" 如果没有安装 powerline 字体不要启用这个选项，否则会显示乱码
" 如果 vim-devicons 插件配置好了就可以忽略 powerline 字体，这个插件包含
" 了字体图标，并且更加漂亮
" let g:airline_powerline_fonts = 1

" 启动顶部的 tabline ， 可以显示打开的 buffers， 显示多 tab 标签
let g:airline#extensions#tabline#enabled = 1

" " 设置切换 tab 标签（buffer）的快捷键
" let g:airline#extensions#tabline#buffer_idx_mode = 1
"  nmap <leader>1 <Plug>AirlineSelectTab1
"  nmap <leader>2 <Plug>AirlineSelectTab2
"  nmap <leader>3 <Plug>AirlineSelectTab3
"  nmap <leader>4 <Plug>AirlineSelectTab4
"  nmap <leader>5 <Plug>AirlineSelectTab5
"  nmap <leader>6 <Plug>AirlineSelectTab6
"  nmap <leader>7 <Plug>AirlineSelectTab7
"  nmap <leader>8 <Plug>AirlineSelectTab8
"  nmap <leader>9 <Plug>AirlineSelectTab9
"  nmap <leader>0 <Plug>AirlineSelectTab0
"  nmap <leader>h <Plug>AirlineSelectPrevTab
"  nmap <leader>l <Plug>AirlineSelectNextTab
" =================================================================
"
" ======================== markdwon 插件配置 ======================
" 更多的配置见 https://github.com/iamcco/markdown-preview.nvim
" vim 打开markdown 文档是否自动预览， 0 - 否， 1 - 是， 默认： 0
" let g:mkdp_auto_start = 1

" 关闭 markdown 是否自动关闭预览文件， 0 - 否， 1 - 是， 默认： 1
" let g:mkdp_auto_close = 1

" 在启动 markdown 预览时是否在终端回显 url
" 如显示： Preview page: http://127.0.0.1:8472/page/1
let g:mkdp_echo_preview_url = 1

" markdwon 的快捷键
map <silent> <F5> <Plug>MarkdownPreview
map <silent> <F6> <Plug>StopMarkdownPreview
" =================================================================
"
" ======================== coc.nvim 插件配置 ======================
" 详细见 https://github.com/neoclide/coc.nvim#example-vim-configuration
" 不清楚作用，推荐配置里面有，详细见 https://github.com/neoclide/coc.nvim/issues/649
set nobackup
set nowritebackup
" 为消息留出更多的空间
set cmdheight=2

let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-go', 'coc-sh', 'coc-snippets', 'coc-git', 'coc-phpls']

" 追踪到定义的位置
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" 查看被谁引用
nmap <silent> gr <Plug>(coc-references)

" 预览窗口显示文档
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

" 重命名的快捷操作
nmap <leader>rn <Plug>(coc-rename)

" 关闭提示后手动唤醒提示
inoremap <silent><expr> <c-l> coc#refresh()
"
"-------------------------------------vim-commentary----------------------------------
"gcc     注释当前行（普通模式）或者取消注释当前行
"gc      可视模式下，注释当前选中的部分，或者取消当前选中部分的注释
"gcu     撤销上一次注释的部分，可以是一行也可以是多行
"gcgc    撤销注释当前行和邻近的上下两行
"为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
autocmd FileType java,php,go,c,cpp set commentstring=//\ %s

"------------------------------------------NERD Tree-----------------------------------
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile= $HOME . '/.vim/bookmark.txt'     "书签保存位置，需要手动创建
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'                   "设置目录标签位置
let NERDTreeWinSize=40                    "设置目录标签宽度
nmap <silent> <leader>t :NERDTreeToggle<CR>    "关闭打开目录标签快捷键

" ------------------------------——-----Tag list (tagbar)--------------------------------------
"
" 使用tagbar
" tagbar 关闭打开快捷键
nmap <silent> <leader>g :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_width = 60

" ------------------------------——-----bufferhint--------------------------------------
nnoremap - :call bufferhint#Popup()<CR>
nnoremap \ :call bufferhint#LoadPrevious()<CR>
"-----------------------------------nerdtree-git-plugin-----------------------------------------
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

autocmd BufEnter Nerd_tree_* NERDTreeRefreshRoot


" 代码报错提示
"定义检测 PHP 语法是否正确的函数
function! CompilePHP()
    let file = shellescape(expand('%:p'))
    let command = "silent !php -l " . file
    execute command
    if v:shell_error != 0
        silent !clear
        let command = "!php -l " . file
        execute command
    else
        redraw!
    endif
endfunction

"配置以 .php 文件结尾的文件保存的时候调用 CompilePHP 函数
autocmd BufWritePost *.php call CompilePHP()

"定义检测 shell 脚本的函数
function! CompileShell()
    let file = shellescape(expand('%:p'))
    let command = "silent !sh -n " . file
    execute command
    if v:shell_error != 0
        silent !clear
        let command = "!sh -n " . file
        execute command
    else
        redraw!
    endif
endfunction

"配置 .sh 结尾的文件保存的时候自动调用 CompileShell 函数
autocmd BufWritePost *.sh call CompileShell()

"定义 mm返回最新修改的位置
map mm '.zz

"退出插入模式
imap <leader>q <ESC>

"设置行号
map <leader>1 :set nu<ENTER>

"取消设置行号
map <leader>2 :set nonu<ENTER>

"插入HTML注释
map <leader>3 O<!--<ESC>yyp2xA><ESC>ddpk

"以/**/格式注释掉一行
map <leader>4 O/**<ESC>yyp2xA/<ESC>ddpk

"在上一行加分隔线
map <leader>8 O/*------------------------------------------------------------------------*/<ESC>j

"手动折叠
"按大括号包围折叠
"nmap <silent> <leader>q f{v%zf
""按中括号包围折叠
"nmap <silent> <leader>[ f[v%zf

"切换标签
"向右切换标签
map <leader>w <C-W><C-W>
"向左切换标签
map <leader>e <C-W>h

" 切换 tab
"跳转到上一个 tab
map <leader>a :tabp<CR>
"跳转到下一个 tab
map <leader>f :tabn<CR>

" 管理 buffer
"关闭当前 buffer
nmap <leader>k :bd<CR>
"跳转到上一个 buffer
map <leader>s :bp<CR>
"跳转到下一个 buffer
map <leader>d :bn<CR>

"跳转到行尾回车
nmap <C-\> $a<CR><ESC>

" 向下移动10行
nmap <C-j> 10j
" 向上移动10行
nmap <C-k> 10k
" 向左移动5格
nmap <C-h> 5h
" 向右移动5格
nmap <C-l> 5l

" 插入模式下的移动快捷键
" 插入模式下移动到行首
inoremap <C-U> <Home>
" 插入模式下移动到行尾
inoremap <C-O> <End>

"插入模式下上下左右移动
inoremap <C-b> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

"插入模式和普通模式下的保存快捷键
nnoremap <C-D> :w<CR>
inoremap <C-D> <ESC>:w<CR>i

" 全选当前文档
nmap <leader>aa ggvG$

"插入模式下代码提示
inoremap <leader>i <C-X><C-l>
inoremap <leader>o <C-X><C-O>

" 利用临时文件来实现复制、粘贴
" ctrl+v 粘贴
" ctrl+c 复制
" ctrl+x 剪切
imap <C-V> <ESC>:r $HOME/.vim/.vimxfer<CR>i
nmap <C-V> :r $HOME/.vim/.vimxfer<CR>
vmap <C-V> c<ESC>:r $HOME/.vim/.vimxfer<CR>

"必须在可视模式下复制
vmap <C-C> :w! $HOME/.vim/.vimxfer<CR>
"实现ctrl+x 剪切 , 利用vim书签来做
vmap <C-X> ma:w! $HOME/.vim/.vimxfer<CR>V'ad

"因为我们要替换掉ctrl+c为复制, ctrl+v 为粘贴 , 所以重新定义块操作为 ,v
noremap <leader>v <C-V>

"重新定义ZZ , 同时清除复制缓存
map ZZ :!echo "" > $HOME/.vim/.vimxfer<CR>:wq<CR>

command! JsonFormat :execute '%!python -m json.tool'
\ | :execute '%!python -c "import re,sys;chr=__builtins__.__dict__.get(\"unichr\", chr);sys.stdout.write(re.sub(r\"\\u[0-9a-f]{4}\", lambda x: chr(int(\"0x\" + x.group(0)[2:], 16)).encode(\"utf-8\"), sys.stdin.read()))"'
\ | :set ft=javascript
\ | :1
