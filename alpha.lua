return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    
    --set header
    dashboard.section.header.val = {
    "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
    "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
    "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
    "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
    "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
    "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝", 
    }

    --Footer
    dashboard.section.footer.val = "Welcome to NeoVim!"

    --dashboard menu setup
    dashboard.section.buttons.val = {
      dashboard.button("e", " > New File", "<cmd>ene<CR>"),
      dashboard.button("<leader> ee", " > Toggle File Explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("<leader> ff", " > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("<leader> fs", " > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("<leader> wr", " > Restore Session for CurrentDirectory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVim", "<cmd>qa<CR>"),
    }
    
    --send the config to alpha
    alpha.setup(dashboard.opts)
    
    --Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
