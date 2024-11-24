return {
  "gbprod/substitute.nvim",
  event = {"BufReadPre", "BufNewFile"},
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    --set keymaps
    vim.keymap.set("n","s", substitute.operator, {desc = "Substitute with motion"})
    vim.keymap.set("n","s", substitute.line, {desc = "Substitute line"})
    vim.keymap.set("n","s", substitute.eol, {desc = "Substitute to the end of line"})
    vim.keymap.set("x","s", substitute.visual, {desc = "Substitute in visual mode"})
  end,
}
