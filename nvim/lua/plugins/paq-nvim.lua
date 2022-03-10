-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: paq-nvim
-- https://github.com/savq/paq-nvim

vim.cmd 'packadd paq-nvim'            -- load paq
local paq = require('paq').paq   -- import module with `paq` function

-- Add packages
-- for package info see: init.lua (Lua modules)
require('paq') {
  'savq/paq-nvim';  -- let paq manage itself
  'kyazdani42/nvim-web-devicons';
  'kyazdani42/nvim-tree.lua';
  'Yggdroot/indentLine';
  'nvim-treesitter/nvim-treesitter';
  'neovim/nvim-lspconfig';
  'windwp/nvim-autopairs';
  'tanvirtin/monokai.nvim';
  'nvim-lua/plenary.nvim';
  'lewis6991/gitsigns.nvim';
  'wakatime/vim-wakatime';
  'nvim-telescope/telescope.nvim';
  'sindrets/diffview.nvim';
  "folke/zen-mode.nvim";
  'kyazdani42/nvim-web-devicons';
  'kdheepak/lazygit.nvim';
  "oberblastmeister/neuron.nvim";
  'nvim-lua/popup.nvim';
  'sheerun/vim-polyglot';
  'nvim-lualine/lualine.nvim';
  {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' };
  {"neoclide/coc.nvim", branch="release"};
  'windwp/nvim-spectre';
  'williamboman/nvim-lsp-installer';
  'folke/trouble.nvim';
  'ibhagwan/fzf-lua';
  'vijaymarupudi/nvim-fzf';
  'numToStr/Comment.nvim';
  'mhartington/formatter.nvim';
  'vimwiki/vimwiki';
  'ElPiloto/telescope-vimwiki.nvim';
  'github/copilot.vim';
  'fatih/vim-go';
  'L3MON4D3/LuaSnip';
  'kkoomen/vim-doge';
  'beanworks/vim-phpfmt';
  "nvim-telescope/telescope-file-browser.nvim";
  'nvim-telescope/telescope-media-files.nvim';
  'vim-syntastic/syntastic';
  'simrat39/symbols-outline.nvim';
  'folke/tokyonight.nvim';
}
