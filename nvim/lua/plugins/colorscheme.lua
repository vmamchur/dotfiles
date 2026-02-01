return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  {
    'RRethy/base16-nvim',
    config = function()
      vim.cmd 'colorscheme base16-da-one-black'

      local transparent_groups = {
        'Normal', -- Main text window
        'NormalNC', -- Inactive window
        'SignColumn', -- The gutter for git signs/errors
        'LineNr', -- Line numbers
        'EndOfBuffer', -- The ~ at bottom of file
        'MsgArea', -- The command line area
      }

      for _, group in ipairs(transparent_groups) do
        vim.api.nvim_set_hl(0, group, { bg = 'none', ctermbg = 'none' })
      end
    end,
  },
}
