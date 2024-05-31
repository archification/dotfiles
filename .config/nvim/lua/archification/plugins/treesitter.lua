return {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "c", "cpp", "lua", "python", "javascript", "rust", "bash" },
            sync_install = false,
            auto_install = true,
            ignore_install = { "javascript" },
            highlight = {
                enable = true,
                disable = { "c", "cpp" },
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
