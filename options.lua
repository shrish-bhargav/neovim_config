vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

--tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

--search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (works with color terminals)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light/dark will be set dark
opt.signcolumn = "yes"

-- backspace 
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or i mode start pos

-- split windows
opt.splitright = true -- split vertical window to right
opt.splitbelow = true -- split horizontal windows to bottom


