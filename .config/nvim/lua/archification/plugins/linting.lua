return {
    "rust-lang/rust.vim",
    {
        "neovim/nvim-lspconfig",
        config = function()
            require('lspconfig').rust_analyzer.setup({
                on_attach = function(client, bufnr)
                    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
                    local opts = { noremap=true, silent=true }
                    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
                    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
                    buf_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
                    buf_set_keymap('n', '<C-k', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
                end,
                settings = {
                    ["rust-analyzer"] = {
                        assist = {
                            importGranularity = "module",
                            importPrefix = "by_self",
                        },
                        cargo = {
                            loadOutDirsFromCheck = true,
                        },
                        procMacro = {
                            enable = true
                        },
                    }
                }
            })
        end,
    }
}
