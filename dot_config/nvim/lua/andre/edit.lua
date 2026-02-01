-- File settings
vim.opt.encoding = 'utf-8'

-- Indentation
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Appearance
vim.opt.title = true
vim.opt.wrap = true
vim.opt.background = 'dark'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.linebreak = true
vim.opt.ruler = true
vim.opt.visualbell = true

-- Behaviour
vim.opt.backspace = indent,eol,start
vim.opt.scrolloff = 1
vim.opt.sidescrolloff = 5
vim.opt.tabpagemax = 10
vim.opt.history = 1000

-- Folding
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldmethod = "manual"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 1
vim.opt.foldnestmax = 4
--vim.opt.foldminlines = 5

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true
