return {
    "tjdevries/colorbuddy.nvim",
    priority = 1000,
    {
        "svrana/neosolarized.nvim",
        config = function()
            require("neosolarized").setup({
                background_set = vim.g.neovide,
            })
            vim.cmd([[colorscheme neosolarized]])
        end,
    },
}
