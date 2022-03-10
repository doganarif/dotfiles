--[[

  ██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗
  ██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
  ██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
  ██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

Neovim init file

Version: 0.6.0_rev1 - 2021/10/05
Maintainer: Brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]
-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require('settings')                 -- settings
require('keymaps')                  -- keymaps
require('plugins/paq-nvim')         -- plugin manager
require('plugins/packer')
require('plugins/nvim-tree')	      -- file manager
-- require('plugins/nvim-cmp')         -- autocomplete
require('plugins/nvim-autopairs')   -- autopairs
-- require('plugins/nvim-lspconfig')   -- LSP settings
require('plugins/vista')            -- tag viewer
require('plugins/nvim-treesitter')  -- tree-sitter interface
require('plugins/gitsigns')         -- git decorations
require('plugins/nvim-telescope')
require('plugins/nvim-web-devicons')
require('plugins/lualine')
-- require('plugins/nvim-galaxyline')
--require('plugins/nvim-monokai')
require('plugins/nvim-spectre')
-- require('lsp/installer') -- LSP installer
require('plugins/trouble')
require('plugins/formatter')
require('plugins/comment')
require('plugins/gutentags')
