tnoremap  h
let s:cpo_save=&cpo
set cpo&vim
tnoremap <NL> j
tnoremap  k
tnoremap  l
nnoremap  <Cmd>q!
nnoremap  <Cmd>w!
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
tnoremap  
nnoremap  <Cmd>ToggleTerm
nnoremap <silent>  lÞ <Nop>
nnoremap <silent>   Þ <Nop>
nnoremap <silent>  SÞ <Nop>
nnoremap <silent>  pÞ <Nop>
nnoremap <silent>  gÞ <Nop>
nnoremap <silent>  tÞ <Nop>
nnoremap <silent>  fÞ <Nop>
nnoremap <silent>  sÞ <Nop>
nnoremap <silent>  bÞ <Nop>
nnoremap <silent>  Þ <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
xnoremap <silent>  Þ <Nop>
xnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "v", auto = true})
snoremap   <Nop>
onoremap   <Nop>
nnoremap  tv <Cmd>ToggleTerm size=80 direction=vertical
nnoremap  pS <Cmd>PackerStatus
nnoremap  w <Cmd>w
nnoremap  q <Cmd>q
nnoremap  tf <Cmd>ToggleTerm direction=float
nnoremap  h <Cmd>nohlsearch
nnoremap  fn <Cmd>enew
nnoremap  th <Cmd>ToggleTerm size=10 direction=horizontal
nnoremap  e <Cmd>Neotree toggle
nnoremap  pi <Cmd>PackerInstall
nnoremap  o <Cmd>Neotree focus
nnoremap  pc <Cmd>PackerCompile
nnoremap  Sl <Cmd>SessionManager! load_last_session
nnoremap  bb <Cmd>tabnew
nnoremap   r :AstroReload
nnoremap  Ss <Cmd>SessionManager! save_current_session
nnoremap  j <Cmd>m+1
nnoremap  bt <Cmd>BufferLineSortByTabs
nnoremap  Sd <Cmd>SessionManager! delete_session
nnoremap  Sf <Cmd>SessionManager! load_session
nnoremap  bc <Cmd>BufferLinePickClose
nnoremap  S. <Cmd>SessionManager! load_current_dir_session
nnoremap  lI <Cmd>Mason
nnoremap  li <Cmd>LspInfo
nnoremap  lS <Cmd>AerialToggle
nnoremap  bj <Cmd>BufferLinePick
nnoremap  ps <Cmd>PackerSync
nnoremap   s :let @/ = ""
nnoremap  pu <Cmd>PackerUpdate
nnoremap  d <Cmd>Alpha
nnoremap  k <Cmd>m-2
nnoremap  c <Cmd>Bdelete
vnoremap  / <Cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
nnoremap <silent> ' <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})
nnoremap <silent> <Þ <Nop>
nnoremap <silent> < <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})
nnoremap <b <Cmd>BufferLineMovePrev
vnoremap < <gv
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
nnoremap >b <Cmd>BufferLineMoveNext
vnoremap > >gv
nnoremap <silent> @Þ <Nop>
nnoremap <silent> @ <Cmd>lua require("which-key").show("@", {mode = "n", auto = true})
nnoremap H <Cmd>BufferLineCyclePrev
nnoremap L <Cmd>BufferLineCycleNext
nnoremap Q <Nop>
nnoremap Y y$
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
nnoremap <silent> ` <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})
xnoremap <silent> aÞ <Nop>
xnoremap <silent> a <Cmd>lua require("which-key").show("a", {mode = "v", auto = true})
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
noremap <silent> gb <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)
noremap <silent> gc <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)
noremap <silent> g> <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "g>", prefix = "" }, _G.packer_plugins)
noremap <silent> g< <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "g<", prefix = "" }, _G.packer_plugins)
xnoremap <silent> iÞ <Nop>
xnoremap <silent> i <Cmd>lua require("which-key").show("i", {mode = "v", auto = true})
tnoremap jk 
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
nnoremap <C-Ã>� <Cmd>ToggleTerm size=10 direction=horizontal
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
inoremap  u
inoremap  u
nnoremap § :
nnoremap ö ^
nnoremap å %
nnoremap ä $
vnoremap å %
vnoremap ö ^
vnoremap ä $
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start,nostop
set clipboard=unnamedplus
set completeopt=menuone,noselect
set copyindent
set expandtab
set fillchars=eob:\ 
set helplang=en
set history=100
set ignorecase
set laststatus=0
set lazyredraw
set mouse=a
set preserveindent
set pumheight=10
set runtimepath=~/.config/nvim,/usr/local/etc/xdg/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,~/.local/share/nvim/site/pack/packer/opt/alpha-nvim,~/.local/share/nvim/site/pack/packer/opt/nvim-notify,~/.local/share/nvim/site/pack/packer/opt/feline.nvim,~/.local/share/nvim/site/pack/packer/opt/bufferline.nvim,~/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons,~/.local/share/nvim/site/pack/packer/opt/dressing.nvim,~/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim,~/.local/share/nvim/site/pack/*/start/*,~/.local/share/nvim/site/pack/packer/opt/which-key.nvim,~/.local/share/nvim/site/pack/packer/opt/mason-tool-installer.nvim,~/.local/share/nvim/site/pack/packer/opt/SchemaStore.nvim,~/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim,~/.local/share/nvim/site/pack/packer/start/nvim-lspconfig,~/.local/share/nvim/site/pack/packer/start/packer.nvim,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.7.2_1/share/nvim/runtime,/usr/local/Cellar/neovim/0.7.2_1/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,/usr/local/etc/xdg/nvim/after,~/.config/nvim/after,~/.config/astronvim
set scrolloff=8
set shiftwidth=2
set noshowmode
set showtabline=0
set sidescrolloff=8
set smartcase
set splitbelow
set splitright
set statusline=%{%v:lua.require'feline'.generate_statusline()%}
set noswapfile
set tabline=%!v:lua.nvim_bufferline()
set tabstop=2
set termguicolors
set timeoutlen=300
set undofile
set updatetime=300
set window=38
set nowritebackup
" vim: set ft=vim :
