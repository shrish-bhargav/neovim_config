return {
  "windwp/nvim-autopairs",
  event = {"InsertEnter"},
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- import nvim-autopairs
    local autopairs = require("nvim-autopairs") -- corrected module name

    -- configure autopairs
    autopairs.setup({
      check_ts = true, -- enable treesitter
    })

    -- import nvim-autopairs completion functionality
    local cmp_autopairs = require("nvim-autopairs.completion.cmp") -- corrected module name
    
    -- import nvim-cmp plugin (completion plugin)
    local cmp = require("cmp")

    -- integrate autopairs and completion
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}

