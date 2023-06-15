require'nvim-treesitter.configs'.setup {
  ensure_installed = { "vim", "bash", "c", "cpp", "lua", "python", "rust" }, -- one of "all" or a list of languages

  highlight = { enable = true },
}
