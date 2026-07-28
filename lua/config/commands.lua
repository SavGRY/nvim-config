local api = vim.api
local cmd = vim.cmd

api.nvim_create_user_command('Rd', function()
    -- Sostituisce tutti i trattini con spazi sulla riga
    cmd([[s/-/ /g]])
    -- Va all'inizio del file sul primo carattere
    cmd([[normal! gg0]])
    -- Va alla fine della prima parola ed entra in modalità inserimento scrivendo "():"
    cmd([[normal! e i():]])
end, { desc = "Rimuove i trattini e mette parentesi per commit" })
