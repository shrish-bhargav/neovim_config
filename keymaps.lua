vim.g.mapleader = " " 

vim.keymap.set("i", "jk", "<Esc>", {desc = "Exit insert mode with jk" })
vim.keymap.set("n", "<leader>pp", vim.cmd.Ex, {desc = "opens the file explorer"})

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights"})

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", {desc = "Split window vertically"})
vim.keymap.set("n", "<leader>sh", "<C-w>s", {desc = "Split window horizontally"})
vim.keymap.set("n", "<leader>se", "<C-w>=", {desc = "Make split equal size"})
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>",{desc = "Close current split"})

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new tab"})
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "Close current tab"})
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "Go to next tab"})
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "Go to previous tab"})
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Open current buffer in new tab"})
