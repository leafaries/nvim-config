-- fat cursor
vim.opt.guicursor = ""

-- number & relative number
vim.opt.nu = true
vim.opt.relativenumber = true

-- smart indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- do not wrap lines
vim.opt.wrap = false

-- let undo plugin has access to undos from older sessions
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- helps u out while typing the /EXPRESSION, but disables the highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- colors
vim.opt.termguicolors = true

-- always shows next 8 lines if they exist while scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

