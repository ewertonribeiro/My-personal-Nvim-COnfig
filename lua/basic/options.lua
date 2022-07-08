-- Global Sets """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
local opt = vim.opt



opt.number = true
opt.relativenumber = true
opt.syntax = "enable"
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smarttab = true
opt.smartindent = true
opt.hidden = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.signcolumn = "yes"
opt.cmdheight = 2
opt.updatetime = 100
opt.fileencoding = "utf-8"
opt.backup = false
opt.splitright = true
opt.splitbelow = true
opt.autoread = true
opt.mouse = "a"
-- vim.opt.nocompatible = true
opt.filetype = "enable"
opt.laststatus = 2
opt.filetype.plugin = "enable"
opt.filetype.indent = "enable"
opt.termguicolors = true
opt.clipboard = "unnamedplus"
opt.hlsearch = true --HighLight all previews searchs results
opt.showmode = false --Do not show the mode anymore
opt.swapfile = false -- Create a swap file
opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.cursorline = true -- highlight the current line

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
