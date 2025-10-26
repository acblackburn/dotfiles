return {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd("colorscheme ayu")
    end
}
