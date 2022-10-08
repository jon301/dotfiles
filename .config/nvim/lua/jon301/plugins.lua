local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Color scheme
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  -- Statusline
  use 'nvim-lualine/lualine.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Auto-completion
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'L3MON4D3/LuaSnip' -- snippets
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/nvim-cmp' -- completion
  use 'glepnir/lspsaga.nvim'

  -- Filetree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
  }

  -- Comment
  use 'numToStr/Comment.nvim'

  -- Hop motions
  use {
    'phaazon/hop.nvim',
    branch = 'v2' -- optional but strongly recommended
  }

  -- Syntax Highlighter
  use 'nvim-treesitter/nvim-treesitter'

  -- Telescope (Fuzzy Finder)
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lua/plenary.nvim' -- Dependency for Telescope

  -- Bufferline
  -- use {
  --   'akinsho/bufferline.nvim', 
  --   tag = "v2.*", 
  --   requires = 'kyazdani42/nvim-web-devicons'
  -- }


  -- Scope - change the way of how to use tabs on neovim
  -- use {
  --   'romgrk/barbar.nvim',
  --   requires = {'kyazdani42/nvim-web-devicons'}
  -- }
  
  -- use 'nanozuki/tabby.nvim'

  use 'toppair/reach.nvim'

  use {
    'LukasPietzschmann/telescope-tabs',
    requires = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require'telescope-tabs'.setup{
        -- Your custom config :^)
      }
    end
  }

end)
