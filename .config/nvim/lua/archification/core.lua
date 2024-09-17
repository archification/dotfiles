vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.virtualedit = "block";

vim.o.guifont = "Hack Nerd Font:h11"
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_text_gamma = 0.8
vim.g.neovide_text_contrast = 0.1
vim.g.neovide_transparency = 0.9

vim.api.nvim_set_keymap('n', '<Up>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ww', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'qq', ':q!<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.cmd([[highlight ExtraWhitespace ctermbg=red guibg=red]])
vim.cmd([[
    augroup TrailingWhitespace
        autocmd!
        autocmd BufWinEnter,BufReadPost * match ExtraWhitespace /\s\+$/
        autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
        autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    augroup END
]])
