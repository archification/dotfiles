return {
    "tjdevries/colorbuddy.nvim",
    priority = 1000,
    {
        "svrana/neosolarized.nvim",
        config = function()
            vim.cmd([[colorscheme neosolarized]])
        end,
    },
}
