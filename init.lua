-- qusto dovrebbe comunque far partire tutto nella
-- cartella `plugins`
require("config.lazy")
require("config.lsp")
require("config.keymaps")
-- Disable python provider to stop warnings
vim.g.loaded_python3_provider = 0

-- Startup setup
vim.opt.number = true            -- Numeri riga corrente
vim.opt.relativenumber = true    -- Numeri relativi (Richiesta)
vim.opt.mouse = 'a'              -- Supporto mouse
vim.opt.ignorecase = true        -- Ricerca case-insensitive
vim.opt.smartcase = true         -- Se scrivi maiuscole, diventa case-sensitive
vim.opt.shiftwidth = 4           -- Indentazione 4 spazi (Standard Python)
vim.opt.tabstop = 4
vim.opt.expandtab = true         -- Spazi invece di Tab
vim.opt.autoindent = true
vim.opt.termguicolors = true     -- Colori moderni
vim.opt.clipboard = 'unnamedplus' -- Condivisione clipboard con sistema
vim.opt.splitright = true        -- Split verticali a destra
vim.opt.splitbelow = true        -- Split orizzontali sotto
vim.cmd.colorscheme("dracula")

