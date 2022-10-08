-- https://github.com/kyazdani42/nvim-tree.lua#setup

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}

-- Keymaps
vim.keymap.set("n", "nt", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "nf", ":NvimTreeFindFile<CR>")

vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")
