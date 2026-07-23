return {
  -- LSP Configuration & Plugins
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()

      -- Configura l'installazione automatica dei server tramite Mason
      local servers = {
          "basedpyright",
          "lua_ls",
          "angularls",
          "biome",
          "cssls",
          "csskit",
          "djls",
          "djlsp",
          "docker_compose_language_service",
          "dockerls",
          "html",
          "htmx",
          "jinja_lsp",
          "jsonls",
          "ruff",
          "tailwindcss",
          "ts_ls",
          "vimls",
      }

      require("mason-lspconfig").setup({
        ensure_installed = servers
      })

      -- Configurazione specifica per singolo server con l'API nativa vim.lsp
      vim.lsp.config("basedpyright", {
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "basic",
            },
          },
        },
      })

      -- Attiva i server
      for _, server in ipairs(servers) do
        vim.lsp.enable(server)
      end
      -------------------------------------------------------------------
      -- MAPPARE ALT + INVIO (M-CR) ALL'ATTIVAZIONE DELL'LSP
      -------------------------------------------------------------------
       vim.api.nvim_create_autocmd("LspAttach", {
           callback = function(args)
               local bufnr = args.buf
           end,
       })

  end,
  },
}
