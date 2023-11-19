local opt = vim.opt

opt.number = true
opt.relativenumber = true

-- tab
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.mouse:append("a")

-- search
opt.ignorecase = true
opt.smartcase = true

-- theme
opt.termguicolors = true
opt.signcolumn = "yes"

-- curosr
opt.cursorline = true
