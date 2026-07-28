require("config.lazy")
require("config.lsp")
require("config.keymaps")
require("config.commands")

local opt = vim.opt

-- Disable python provider to stop warnings
vim.g.loaded_python3_provider = 0

-- Startup setup
opt.number = true             -- Numeri riga corrente
opt.relativenumber = true     -- Numeri relativi (Richiesta)
opt.mouse = 'a'               -- Supporto mouse
opt.ignorecase = true         -- Ricerca case-insensitive
opt.smartcase = true          -- Se scrivi maiuscole, diventa case-sensitive
opt.shiftwidth = 4            -- Indentazione 4 spazi (Standard Python)
opt.tabstop = 4
opt.expandtab = true          -- Spazi invece di Tab
opt.autoindent = true
opt.termguicolors = true      -- Colori moderni
opt.clipboard = 'unnamedplus' -- Condivisione clipboard con sistema
opt.splitright = true         -- Split verticali a destra
opt.splitbelow = true         -- Split orizzontali sotto
opt.hlsearch = true

-- Colorscheme
vim.cmd.colorscheme("dracula")
