return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "ts_ls"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            local lspconfig = require("lspconfig")
            local telescope = require("telescope.builtin")

             -- Define keymaps for LSP features
            local on_attach = function()
                vim.keymap.set('n', 'gd', telescope.lsp_definitions, { desc = "Go to definitions" })
                vim.keymap.set('n', 'gr', telescope.lsp_references, { desc = "Go to references" })
                vim.keymap.set('n', 'gi', telescope.lsp_implementations, { desc = "Go to implementations" })
                vim.keymap.set('n', 'gt', telescope.lsp_type_definitions, { desc = "Go to type definitions" })
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover documentation" })
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code actions" })
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename symbol" })
            end

            -- Setup LSP servers with the keymaps
            lspconfig.lua_ls.setup({
                on_attach = on_attach
            })
            lspconfig.ts_ls.setup({
                on_attach = on_attach
            })
        end
    }
}
