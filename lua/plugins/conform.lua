return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                -- HTML 
                html = { "oxfmt" },

                -- JavaScript / TypeScript / JSON, fallback biome)
                javascript = { "oxfmt", "biome", stop_after_first = true },
                typescript = { "oxfmt", "biome", stop_after_first = true },
                json = { "oxfmt", "biome", stop_after_first = true },
                jsonc = { "oxfmt", "biome", stop_after_first = true },

                -- Style
                css = { "oxfmt", "csskit", stop_after_first = true },
                scss = { "oxfmt" },

                -- Markdown
                markdown = { "oxfmt", "markdownlint", stop_after_first = true },

                -- Python
                python = { "ruff_organize_imports", "ruff_format", "autopep8" },

                -- Django & Jinja Templates
                htmldjango = { "djlint" },
                jinja = { "djlint" },
                angular = { "oxfmt", "djlint", stop_after_first = true },

                -- SQL
                sql = { "sqruff" },
            },
            format_on_save = {
                lsp_format = "fallback",
                timeout_ms = 500,
            },
        })
    end
}
