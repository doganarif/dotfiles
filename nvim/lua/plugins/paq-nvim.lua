-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: paq-nvim
-- https://github.com/savq/paq-nvim

vim.cmd 'packadd paq-nvim'            -- load paq
local paq = require('paq-nvim').paq   -- import module with `paq` function

-- Add packages
-- for package info see: init.lua (Lua modules)
require('paq') {
  'savq/paq-nvim';  -- let paq manage itself

  'famiu/feline.nvim';
  'kyazdani42/nvim-web-devicons';
  'kyazdani42/nvim-tree.lua';
  'Yggdroot/indentLine';
  'liuchengxu/vista.vim';
  'nvim-treesitter/nvim-treesitter';
  'neovim/nvim-lspconfig';
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-buffer';
  'saadparwaiz1/cmp_luasnip';
  'L3MON4D3/LuaSnip';
  'windwp/nvim-autopairs';
  'tanvirtin/monokai.nvim';
  'nvim-lua/plenary.nvim';
  'lewis6991/gitsigns.nvim';
  'nvim-telescope/telescope.nvim';
  'sindrets/diffview.nvim';
  'TimUntersberger/neogit';
  "folke/zen-mode.nvim";
  'kyazdani42/nvim-web-devicons';
  'rktjmp/lush.nvim';
  'metalelf0/jellybeans-nvim';
  "Pocco81/Catppuccino.nvim";
  "oberblastmeister/neuron.nvim";
  'nvim-lua/popup.nvim';
  "nvim-neorg/neorg";
  'tiagovla/tokyodark.nvim';
  'glepnir/galaxyline.nvim';
  'kyazdani42/nvim-web-devicons';
  'sheerun/vim-polyglot';
  'pineapplegiant/spaceduck';
  'nvim-lualine/lualine.nvim';
  {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' };
  'windwp/nvim-spectre';
  "xiyaowong/nvim-transparent";
  {
  'NFrid/due.nvim',
  config = function()
    require('due_nvim').setup {}
  end
};
'Mofiqul/dracula.nvim';
'romgrk/barbar.nvim';
'williamboman/nvim-lsp-installer';
'folke/trouble.nvim';
'ibhagwan/fzf-lua';
'vijaymarupudi/nvim-fzf';
'mhartington/formatter.nvim';
}

