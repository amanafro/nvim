return {
      {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {},
      },
      {
        "neovim/nvim-lspconfig",
        dependencies = {
          "jose-elias-alvarez/typescript.nvim",
          init = function()
            require("lazyvim.util").lsp.on_attach(function(_, buffer)
              vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports",
                { buffer = buffer, desc = "Organize Imports" })
              vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
            end)
          end,
        },
        ---@class PluginLspOpts
        opts = {},
        setup = {
          tsserver = function(_, opts)
            require("typescript").setup({ server = opts })
            return true
          end,
        },
      },
    },
    { import = "lazyvim.plugins.extras.lang.typescript" },
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = {
          "bash",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "tsx",
          "typescript",
          "vim",
          "yaml",
          "zig",
          "rust",
          "svelte",
        },
      },
    },
    {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
        vim.list_extend(opts.ensure_installed, {
          "tsx",
          "typescript",
          "svelte",
          "go",
          "html",
          "css",
          "javascript",
          "gomod",
          "gosum",
          "gotmpl",
        })
      end,
    },
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "stylua",
          "shellcheck",
          "shfmt",
          "flake8",
          "gopls",
          "zls",
        },
      },
    }
