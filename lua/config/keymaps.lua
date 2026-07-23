-- LSP
vim.keymap.set('n', '<A-Enter>', vim.lsp.buf.code_action, { noremap = true, silent = true, desc = 'Code Action' })
vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, { noremap = true, silent = true, desc = 'LSP Hover' })

-- LSPSAGA
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { noremap = true, silent = true, desc = 'Hover Documentation' })
vim.keymap.set('n', '<leader>sd', '<cmd>LspSagaShowDiagnostic<cr>', { noremap = true, silent = true, desc = 'Show Diagnostic' })

-- Which key
vim.keymap.set('n', '<leader>?', function()
    require("which-key").show({ global = false })
end, { noremap = true, silent = true, desc = 'Buffer Local Keymaps (which-key)' })
