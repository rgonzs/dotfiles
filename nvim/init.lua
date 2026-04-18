vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

vim.opt.title = true             -- set title
vim.opt.number = true            -- set nu
vim.opt.mouse = ""               -- set mouse=
vim.opt.incsearch = true         -- set incsearch
vim.opt.background = "dark"      -- set background=dark
vim.opt.shiftwidth = 4           -- set shiftwidth=4
vim.opt.softtabstop = 2          -- set softtabstop=2
vim.opt.expandtab = true         -- set expandtab
vim.opt.smarttab = true          -- set smarttab
vim.opt.clipboard = "unnamedplus" -- set clipboard=unnamedplus
vim.cmd.colorscheme "catppuccin-nvim"

