return {
  -- Treesitter
  -- https://github.com/nvim-treesitter/nvim-treesitter
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  priority = 1000,
  build = ":TSUpdate",

  config = function()
    require('nvim-treesitter').setup({
      install_dir = vim.fn.stdpath('data') .. '/site',
    })

    require('nvim-treesitter').install {
      "lua",
      "javascript",
      "typescript",
      "python",
      "yaml",
      "json",
      "markdown",
      "bash",
      "vim",
      "vimdoc",
      "html",
      "css",
      "scss",
      "tsx",
      "vue",  
    }
  end
}
