require'nvim-treesitter.configs'.setup {
  ensure_installed = { "vim", "bash", "c", "cpp", "lua", "python", "rust" }, -- one of "all" or a list of languages

  highlight = { enable = true },

  -- 不同括号颜色
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
