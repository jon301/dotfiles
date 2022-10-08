require'hop'.setup()

-- Keymapso
vim.keymap.set('n', '<Leader><Leader>k', ":HopWordBC<CR>")
vim.keymap.set('n', '<Leader><Leader>j', ":HopWordAC<CR>")
vim.keymap.set('n', '<Leader><Leader>l', ":HopWordCurrentLineAC<CR>")
vim.keymap.set('n', '<Leader><Leader>h', ":HopWordCurrentLineBC<CR>")
