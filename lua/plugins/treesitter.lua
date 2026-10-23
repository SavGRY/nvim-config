return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install({ "typescript", "tsx", "javascript", "html", "css", "json", "lua", "python", "angular" })
        -- .html inside an Angular project -> htmlangular (angular parser highlights {{ }})
        vim.filetype.add({
            extension = {
                html = function(path, bufnr)
                    if vim.fs.root(path, "angular.json") then return "htmlangular" end
                    return require("vim.filetype.detect").html(path, bufnr)
                end,
            },
        })
        vim.api.nvim_create_autocmd("FileType", {
            callback = function() pcall(vim.treesitter.start) end,
        })
    end,
}
