local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  -- LSP
  "folke/neodev.nvim",
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "j-hui/fidget.nvim",
  -- Auto completion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  -- Treesitter
  { 
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  },
  "nvim-treesitter/nvim-treesitter-textobjects",
  -- Git 
  "lewis6991/gitsigns.nvim",
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",
  -- Theme
  "folke/tokyonight.nvim",
  -- Telescope
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
  "nvim-telescope/telescope-fzy-native.nvim",
  -- Terminal
  {
    "s1n7ax/nvim-terminal",
    config = function()
      vim.o.hidden = true
      require("nvim-terminal").setup()
    end,
  },
  -- Copilot
  "github/copilot.vim",
  -- Ale  
  "dense-analysis/ale",
  -- Lualine
  "nvim-lualine/lualine.nvim",
  -- Comment
  {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup()
	end,
  },
  -- Misc
  "lukas-reineke/indent-blankline.nvim",
  "tpope/vim-sleuth",
})
