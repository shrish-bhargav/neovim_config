return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile"},
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({
      highlight = {
        enable = true,
      },
      --enable indentation
      indent = {enable = true},
      --enable autotagging (windwp/ nvim-ts-autotag)
      autotag = {
        enable = true,
      },
      --ensure these language parsers are installed
      enusre_installed = {
        "javascript",
        "clangd",
        "ts_ls",
        "C",
        "asm",
        "bash",
        "ada",
        "json",
        "jsdoc",
        "lua",
        "rust",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_selection = "<C-space>",
          scope_incremental = false,
          node_incremental = "<bs>"
        },
      },
    })
  end
}
