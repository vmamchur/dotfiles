return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup {}
    local suggestion = require 'supermaven-nvim.completion_preview'

    vim.keymap.set('n', '<leader>ta', function()
      suggestion.disable_inline_completion = not suggestion.disable_inline_completion
      print(suggestion.disable_inline_completion and 'AI autocompletion DISABLED' or 'AI autocompletion ENABLED')
    end, { desc = '[T]oggle [A]I autocompletion' })

    vim.keymap.set('i', '<C-t>a', function()
      suggestion.disable_inline_completion = not suggestion.disable_inline_completion
      print(suggestion.disable_inline_completion and 'AI autocompletion DISABLED' or 'AI autocompletion ENABLED')
    end, { desc = '[T]oggle [A]I autocompletion' })
  end,
}
