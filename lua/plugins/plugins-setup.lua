local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- speed up loading Lua modules
  use 'lewis6991/impatient.nvim'

  use 'wbthomason/packer.nvim'

  -- theme
  use 'folke/tokyonight.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- language server protocol
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }

  -- completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path"

  -- git
  use "lewis6991/gitsigns.nvim"

  -- buffer
  use "akinsho/bufferline.nvim"

  -- file tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  -- symbol outline
  use 'simrat39/symbols-outline.nvim'

  -- comment and autopairs
  use "numToStr/Comment.nvim"
  use "windwp/nvim-autopairs"

  -- toggle terminal 
  use "akinsho/toggleterm.nvim"

  -- syntax highlight
  use "nvim-treesitter/nvim-treesitter"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
