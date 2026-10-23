return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install({ "typescript", "tsx", "javascript", "html", "css", "json", "lua", "python" })
        vim.api.nvim_create_autocmd("FileType", {
            callback = function() pcall(vim.treesitter.start) end,
        })
    end,
}
