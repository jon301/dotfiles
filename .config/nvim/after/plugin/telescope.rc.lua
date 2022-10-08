-- https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/mappings.lua#L130

local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

telescope.setup {
  defaults = {
    file_ignore_patterns = {
      ".git",
      "node_modules",
    },
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-o>"] = actions.select_default,
        ["<esc>"] = actions.close,
      },
    },
  },
}

-- Keymaps

vim.keymap.set('n', '<leader>f', function()
  builtin.find_files({
    no_ignore = false,
    hidden = true
  })
end)

vim.keymap.set('n', '<C-p>', function()
  builtin.find_files({
    no_ignore = false,
    hidden = true
  })
end)

vim.keymap.set('n', '<leader>s', function()
  builtin.live_grep()
end)

vim.keymap.set('n', '<leader>g', function()
  require('telescope-tabs').list_tabs()
end)

vim.keymap.set('n', '<leader>h', function()
  builtin.help_tags()
end)

vim.keymap.set('n', ';;', function()
  builtin.resume()
end)

vim.keymap.set('n', ';e', function()
  builtin.diagnostics()
end)

