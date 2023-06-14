vim.opt.number = true

-- tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.wrap = false

vim.opt.mouse:append("a")

-- system clipboard
vim.opt.clipboard:append("unnamedplus")

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- theme
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.cmd[[colorscheme vscode]]
