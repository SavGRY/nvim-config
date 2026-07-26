return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- Consente di visualizzare le icone dei file
    },
    config = function()
        -- Disabilita netrw nativo
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        vim.opt.termguicolors = true

        require("nvim-tree").setup({
            sort_by = "case_sensitive",
            view = {
                width = 30,
                side = "left",
            },
            renderer = {
                group_empty = false,
                icons = {
                    show = {
                        git = true,
                        folder = true,
                        file = true,
                        folder_arrow = true,
                    },
                },
            },
            filters = {
                dotfiles = false, -- Mostra i file nascosti
            },
            git = {
                enable = true,
                ignore = false,
            },
        })
        -- ----------------------------- --
        -- APERTURA AUTOMATICA ALL'AVVIO --
        -- ----------------------------- --
        local function open_nvim_tree(data)
            -- Verifica se è stata aperta una directory (es: nvim .)
            local is_a_directory = vim.fn.isdirectory(data.file) == 1

            -- Verifica se Neovim è stato avviato senza argomenti (es: nvim)
            local is_no_name = data.file == "" and vim.bo[data.buf].buftype == ""

            if is_a_directory then
                -- Cambia la directory di lavoro in quella aperta e avvia la tree
                vim.cmd.cd(data.file)
                require("nvim-tree.api").tree.open()
            elseif is_no_name then
                -- Apri la tree se è stato avviato un buffer vuoto/senza nome
                require("nvim-tree.api").tree.open()
            end
        end

        -- Crea un Autocommand al caricamento di Neovim (VimEnter)
        vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
    end,
}
