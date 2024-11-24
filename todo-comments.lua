return {
  "folke/todo-comments.nvim",
  events = {"BufReadPre", "BufNewFile"},
  dependencies = {"nvim-lua/plenary.nvim"}, 

  config = function()
    local todo_comments = require("todo-comments")

    --set keymaps
    vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_next()
    end, { desc = "Next todo comment" })

    vim.keymap.set("n", "[t", function()
    require("todo-comments").jump_prev()
    end, { desc = "Previous todo comment" })

    todo_comments.setup()
  end,
}
