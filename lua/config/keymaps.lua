local telescope = require("telescope")
local map = vim.keymap
local lsp = vim.lsp

-- LSP
map.set(
    'n', 
    '<A-Enter>', 
    lsp.buf.code_action, {
        noremap = true,
        silent = true,
        desc = 'Code Action'
    }
)
map.set('n', '<leader>h', lsp.buf.hover, { noremap = true, silent = true, desc = 'LSP Hover' })

-- LSPSAGA
map.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { noremap = true, silent = true, desc = 'Hover Documentation' })
map.set('n', '<leader>sd', '<cmd>LspSagaShowDiagnostic<cr>', { noremap = true, silent = true, desc = 'Show Diagnostic' })

-- Which key
map.set('n', '<leader>?', function()
    require("which-key").show({ global = false })
end, { noremap = true, silent = true, desc = 'Buffer Local Keymaps (which-key)' })

-- Telescope
map.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Trova file" })
map.set("n", "<leader>fg", telescope.extensions.live_grep_args.live_grep_args, { desc = "Live Grep con Args" })
