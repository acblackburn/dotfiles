vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local opts = { buffer = args.buf, silent = true }

        opts.desc = "Go to definitions"
        vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

        opts.desc = "Go to references"
        vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

        opts.desc = "Go to implementations"
        vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

        opts.desc = "Go to type definitions"
        vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

        opts.desc = "Hover documentation"
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

        opts.desc = "Code actions"
        vim.keymap.set("n", "<leader>ca", "<cmd>Telescope lsp_code_actions<CR>", opts)

        opts.desc = "Rename symbol"
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    end,
})

