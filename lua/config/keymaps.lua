local telescope = require("telescope")
local conform = require("conform")
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

-- Format On Save Conform
map.set({ "n", "v" }, "<C-A-l>",
	function()
		conform.format({
				lsp_format = "fallback",
				async = false,
				timeout_ms = 1000,
			},
			function(err)
				if not err then
					local filename = vim.fn.expand("%:t")
					if filename == "" then
						filename = "Buffer"
					end
					vim.notify("✓ File " .. filename .. " formattato correttamente!",
						vim.log.levels.INFO, {
						title = "Conform",
					})
				else
					vim.notify("✗ Errore durante la formattazione: " .. tostring(err),
						vim.log.levels.ERROR, {
						title = "Conform",
					})
				end
			end)
	end,
	{ desc = "Formatta il file o la selezione corrente" }
)
