-- keymaps.lua
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")
require("lazy").setup("plugins")  -- Assuming plugins are in 'lua/plugins.lua'

-- init.lua
require("settings")  -- Core settings
require("keymaps")   -- Key mappings
require("plugins")   -- Plugin configuration
