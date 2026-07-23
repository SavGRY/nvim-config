return {
    "nvimdev/lspsaga.nvim", 
    event = "LspAttach",
    dependencies = {
        "neovim/nvim-lspconfig",
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("lspsaga").setup({
            hover = {
                max_width = 0.4,    -- 60% della larghezza dello schermo
                open_link = "gx",   -- Apre i link nella doc premendo 'gx'
            },    
            ui = { 
                border = "rounded",
                devicon = true,
            },
            lightbulb = {
                enable = true,
                sign = true,
            },
            outline = {
                win_width = 30,
            },
        })
    end,

}
