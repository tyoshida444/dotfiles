"--------------- NeoBundle ---------------
    set nocompatible              
    filetype off                  

    if has('vim_starting')
        set runtimepath+=~/.vim/bundle/neobundle.vim/
	    call neobundle#rc(expand('~/.vim/bundle'))
    endif
    
    "GitHubリポジトリにあるプラグインを利用する場合
    NeoBundle 'tpope/vim-fugitive'
    "GitHub以外のGitリポジトリにあるプラグインを利用する場合
    NeoBundle 'git://git.wincent.com/command-t.git'
    "Git以外のリポジトリにあるプラグインを利用する場合
    NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
	"vim-powerline
    "NeoBundle 'Lokaltog/vim-powerline'
	"lightline
	NeoBundle 'itchyny/lightline.vim'
	"インデントみやすくする
    NeoBundle 'Yggdroot/indentLine'
	"エラー訂正
	NeoBundle 'git://github.com/scrooloose/syntastic.git'
	"補完
	NeoBundle 'Shougo/neosnippet.vim'
	NeoBundle 'Shougo/neosnippet'
	NeoBundle 'Shougo/neosnippet-snippets'
	"入力補完
	NeoBundle 'Shougo/neocomplcache.vim'
	"カラースキーム
	NeoBundle 'altercation/vim-colors-solarized'
	"囲んでる系を簡単に
	NeoBundle 'tpope/vim-surround'
	"ヤンク履歴"
	NeoBundle 'LeafCage/yankround.vim'
	NeoBundle 'kien/ctrlp.vim'
	"多機能セレクタ"
	NeoBundle 'kien/ctrlp.vim'
	"VimShell"
	NeoBundle 'Shougo/vimshell.vim'
	NeoBundle 'Shougo/vimproc'
	"unite.vim"
	NeoBundle 'Shougo/unite.vim'
 

    filetype plugin indent on     " Required!
    
	"未インストールのプラグインを確認"
	NeoBundleCheck

"--------------- キーバインド ---------------"

    "Normalモード"
    noremap j           gj
    noremap k           gk
    noremap A           ggVG
    noremap <C-E>       $
    noremap <C-A>       ^
    noremap <TAB>       i<SPACE><SPACE><SPACE><SPACE><RIGHT><ESC>
    noremap <C-K>       lv$hd
    noremap s           :s///gc<LEFT><LEFT><LEFT><LEFT>
    noremap S           :%s///gc<LEFT><LEFT><LEFT><LEFT>
    noremap f           za
    noremap F           zA
    noremap <ESC><ESC>  :nohlsearch<CR><ESC>

    "Insertモード"
    inoremap <C-E>      <END>
    inoremap <C-A>      <HOME>
    inoremap <C-D>      <DEL>
    inoremap <C-B>      <RIGHT><DEL>
    
    inoremap <C-H>      <LEFT>
    inoremap <C-J>      <DOWN>
    inoremap <C-K>      <UP>
    inoremap <C-L>      <RIGHT>
	"jjって連打したらESC
	"inoremap jj         <ESC>

    "Visualモード"
    vnoremap <C-A>      ^
    vnoremap <C-E>      $
    vnoremap <TAB>      >
    vnoremap s          ::s///gc<LEFT><LEFT><LEFT><LEFT>
    vnoremap S          y:%s///gc<LEFT><LEFT><LEFT><LEFT><C-R>"<Right>

    "コマンドモード"
    cnoremap <C-H>      <LEFT>
    cnoremap <C-J>      <DOWN>
    cnoremap <C-K>      <UP>
    cnoremap <C-L>      <RIGHT>
    cnoremap <C-D>      <DEL>


"--------------- ステータスライン ---------------"
    "ステータスラインを常に表示"
    set laststatus=2
    "現在のモードを表示"
    set showmode
    "タイプ途中のコマンドを表示"
    set showcmd
    "右下に行，列を表示"
    set ruler

"--------------- 折り畳み ---------------"
    "set foldmethod=indent "インデントで折り畳みを自動作成してくれる
    "set foldcolumn=3 "ウィンドウの端に確保される折り畳みを示すカラムの幅を指定する数
    "set foldlevel=0 "すべての折り畳みが閉じられる


"--------------- ウィンドウ操作(tmuxでおk) ---------------"
    "縦分割するときに新しいウィンドウを右に"
    "set splitright
    "横分割するときに新しいウィンドウを下に"
    "set splitbelow

"--------------- encoding ---------------"
    set termencoding=utf-8
    set encoding=utf-8
    set fileformats=unix,dos,mac
    set fileencoding=utf-8
    set fileencodings=utf-8,shift-jis
    "if &encoding='utf-8'
    "    set ambiwidth=double
    "endif


"--------------- color ---------------"
    syntax on
    hi Folded      ctermfg=85 ctermbg=NONE
    hi FoldColumn  ctermfg=85 ctermbg=NONE
    "カラー設定
    hi Comment ctermfg=178


"--------------- other ---------------"
    "TABの幅を指定"
    "set expandtab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set shiftround
    
    "モードライン無効"
    set modelines=0

    "自動でインデント"
    set autoindent

    "行数を表示"
    set number
    
	"vimのヤンクとOSのクリップボードを共有
    "set clipboard+=unnamed
	"set clipboard=unnamed

    "viとの互換なし"
    set nocompatible
    
    "タイトルをウィンドウ枠に表示" 
    set title

    "検索文字を打ち込むと即検索"
    set incsearch
    
    "バックスペースで改行とかも消せる"
    set backspace=indent,eol,start

    "バックアップファイルをとらない"
    set nobackup

	"スワップつくらない"
	set noswapfile
        
    "コマンドラインの履歴"
    set history=500

    "バッファを保存しなくても他のバッファを表示可能に"
    set hidden

    "viminfoファイルの設定"
    set viminfo=!,'50,<1000,s100,\"50"

    "全モードでマウスを有効に"
    set mouse=a

    "対応する括弧を表示"
    set showmatch

    "補完候補を表示"
    set wildmenu

    "ビープ音を無効に"
    set vb t_vb=

    "スクロール時の余白確保"
    set scrolloff=7

    "全角スペースを視覚化"
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
    match ZenkakuSpace /　/"

    "検索結果をハイライト"
    set hlsearch

	"カーソルの下の単語を検索
	vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>

	"文字無いとこにもカーソル移動可能(なんかコワイ)
	"set virtualedit=all

	"ファイル開いたら前回のカーソル位置へ移動
	augroup vimrcEx
	autocmd!
	autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line('$') |
	\   exe "normal! g`\"" |
	\ endif
	augroup END

	"ノーマルモードに戻ったら日本語入力をオフにする
	set imdisable
"--------------- Python用 ---------------"
    autocmd FileType python setl autoindent
    autocmd FileType python setl smartindent cinwords=if,elif,for,while,try,except,finally,def,class
    autocmd FileType python setl expandtab tabstop=8 shiftwidth=4 softtabstop=4
	"autocmd FileType python setl columns=120


"--------------- vim-PowerLineの設定 ---------------"
    "let g:Powerline_symbols='fancy'
    "set t_Co=256

"--------------- lightlineの設定 -----------------"
	let g:lightline = {
		\ 'colorscheme':'wombat',
	    \ 'component': {
	    \   'readonly': '%{&readonly?"⭤":""}',
		\ },
	    \ 'separator': { 'left': '⮀', 'right': '⮂' },
	    \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
		\}

	"ブランチコンポーネントの表示
	function! MyFugitive()
		if exists("*fugitive#head")
			let _ = fugitive#head()
			return strlen(_)? '⭠ '._ : ''
		endif
		return ''
	endfunction

"---------------- yankroud の設定 -----------------
	nmap p <Plug>(yankround-p)
	nmap P <Plug>(yankround-P)
	nmap <C-p> <Plug>(yankround-prev)
	nmap <C-n> <Plug>(yankround-next)
	"" 履歴取得数
	let g:yankround_max_history = 50
	""履歴一覧(kien/ctrlp.vim)
	nnoremap <silent>g<C-p> :<C-u>CtrlPYankRound<CR>
	" }}}

"----------------- neosnippet ------------------
	imap <S-k>     <Plug>(neosnippet_expand_or_jump)
	smap <S-k>     <Plug>(neosnippet_expand_or_jump)
	xmap <S-k>     <Plug>(neosnippet_expand_target)
	 
	" SuperTab like snippets behavior.
	imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)"
	\: pumvisible() ? "\<C-n>" : "\<TAB>"
	smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)"
	\: "\<TAB>"
	  
	" For snippet_complete marker.
	if has('conceal')
	  set conceallevel=2 concealcursor=i
	endif

"---------------- vim-snippets -------------------
"	let g:neosnippet#enable_snipmate_compatibility = 1
"	let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

"---------------- neocomplcache ------------------
"	NeoBundle 'Shougo/neocomplcache'
"	let g:acp_enableAtStartup = 0
"	let g:neocomplcache_enable_at_startup = 1
"	let g:neocomplcache_enable_smart_case = 1
"	let g:neocomplcache_min_syntax_length = 3
"	let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"	let g:neocomplcache_dictionary_filetype_lists = {
"	\ 'default' : ''
"	\ }
"	
"	inoremap <expr><C-g>     neocompllcache#undo_completion()
"	inoremap <expr><C-v>     neocomplcache#complete_common_string()
"	
"	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"	function! s:my_cr_function()
"	return neocomplcache#smart_close_popup() . "\<CR>"
"	endfunction
"	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"	inoremap <expr><C-f> neocomplcache#smart_close_popup()."\<C-f>"
"	inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-f>"
"	inoremap <expr><C-y>  neocomplcache#close_popup()
"	inoremap <expr><C-e>  neocomplcache#cancel_popup()
