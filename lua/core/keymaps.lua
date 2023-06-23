vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>")

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- split window
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
vim.keymap.set("n", "<leader>sx", "<C-w>s") -- split horizontally

-- buffer
vim.keymap.set("n", "<C-L>", ":bnext<CR>")
vim.keymap.set("n", "<C-H>", ":bprevious<CR>")

-- plugins --
-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- symbols-outline
vim.keymap.set("n", "<leader>so", ":SymbolsOutline<CR>")

-- hop
vim.keymap.set("n", "<leader>h", ":HopWord<CR>")

-- git diffview
vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>")
vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>")
