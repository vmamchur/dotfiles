return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'vague1k/vague.nvim',
    config = function()
      require('vague').setup { transparent = true }
      vim.cmd 'colorscheme vague'
      vim.cmd ':hi statusline guibg=NONE'
    end,
  },
}
