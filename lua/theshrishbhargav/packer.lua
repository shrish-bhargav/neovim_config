-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
   
  -- for finding the files
 use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use(
	{
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	}
)

use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('nvim-treesitter/playground')
use ('mbbill/undotree')
use ('tpope/vim-fugitive')
use {
	
{'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
{'neovim/nvim-lspconfig'},
{'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/nvim-cmp'},
}

use {
    "williamboman/mason.nvim"
}

use('theprimeagen/harpoon')
end)
