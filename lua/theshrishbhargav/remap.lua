

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- shortcut for searching through neovim files
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>sn', function()
	builtin.find_files {cwd = vim.fn.stdpath 'config' }
end, {desc = '[S]earch [N]eovim files'})

--yanking into the system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y',[["+y]])

--for moving lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


