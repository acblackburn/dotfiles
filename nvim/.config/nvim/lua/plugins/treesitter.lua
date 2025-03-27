local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "javascript" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

return { M }
