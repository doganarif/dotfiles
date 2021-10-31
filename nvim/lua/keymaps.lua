----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- clear search highlighting
map('n', '<leader>c', ':nohl<CR>', default_opts)

-- map Esc to kk
map('i', 'kk', '<Esc>', {noremap = true})



-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)


--- Window Management
map('n', '<leader>vs', ":vsplit<CR>", default_opts)
map('n', '<leader>sp', ":split<CR>", default_opts)


-- close all windows and exit from neovim
map('n', '<leader>q', ':quit<CR>', default_opts)
map('n', '<leader>w', ':write<CR>', default_opts)


-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- open terminal
map('n', '<C-t>', ':Term<CR>', {noremap = true})

-- nvim-tree
map('n', '<C-n>', ':NvimTreeToggle<CR>', default_opts)       -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>', default_opts) -- search file

-- Vista tag-viewer
map('n', '<C-m>', ':Vista!!<CR>', default_opts)   -- open/close


--- Find files using Telescope command-line sugar.
map('n','<leader>ff','<cmd>Telescope find_files<cr>', default_opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', default_opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', default_opts)
map('n', '<leader>fh', '<cmd>Telescope tags<cr>', default_opts)
map('n', '<leader>tt', '<cmd>Telescope<cr>', default_opts)
map('n', '<leader>fz', '<cmd>Telescope current_buffer_fuzzy_find<cr>', default_opts)
map('n', '<leader>gt', '<cmd>Telescope tags<cr>', default_opts)

map('n', '<ESC>', '<cmd>:noh<cr>', default_opts)


--- Neogit
map('n', '<leader>ng', '<cmd>Neogit<cr>', default_opts)

--- Zenmode
map('n', '<leader>z', '<cmd>ZenMode<cr>', default_opts)

--- GitSigns
map('n', '<leader>gb', '<cmd>Gitsigns blame_line<cr>', default_opts)
map('n', '<leader>gd', '<cmd>Gitsigns diffthis<cr>', default_opts)


