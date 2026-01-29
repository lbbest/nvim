--    __   ___ ______  __  _  ___   ________  ___ _________  _  _______________ --
--   / /  / _ /_  /\ \/ / / |/ / | / /  _/  |/  // ___/ __ \/ |/ / __/  _/ ___/ --
--  / /__/ __ |/ /_ \  / /    /| |/ // // /|_/ // /__/ /_/ /    / _/_/ // (_ /  --
-- /____/_/ |_/___/ /_(_)_/|_/ |___/___/_/  /_/ \___/\____/_/|_/_/ /___/\___/   --

-- Define Lazy.nvim installation path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if Lazy.nvim exists, otherwise clone to lazypath
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

-- Add Lazy.nvim to Neovim's runtime path
vim.opt.rtp:prepend(lazypath)

-- Configure plugins
require("lazy").setup({
	-- Plugins here:

  -- Gruvbox theme
  -- https://github.com/ellisonleao/gruvbox.nvim/tree/main
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
  },

  -- Gitsigns
  -- https://github.com/lewis6991/gitsigns.nvim
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  },

  -- Indent Blankline
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
	    require("ibl").setup()
	  end,
  },
})

-- Set colorscheme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Basic settings
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus" -- Cut/copy to system clipboard
