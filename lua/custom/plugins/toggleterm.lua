return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        -- Configuration options for toggleterm
        size = 20,
        open_mapping = [[<c-\>]], -- This sets the shortcut to Ctrl+\
        hide_numbers = true, -- Hide the number column in toggleterm buffers
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = '1', -- The degree by which to darken to terminal color, set between 1 and 3
        start_in_insert = true,
        insert_mappings = true, -- whether or not the open mapping applies in insert mode
        persist_size = true,
        direction = 'float', -- This makes the terminal open in a floating window
        close_on_exit = true, -- Close the terminal window when the process exits
        shell = vim.o.shell, -- Change the default shell
        -- This is where you can define floating window specifics
        float_opts = {
          border = 'curved', -- You can choose between 'single', 'double', 'shadow', 'curved' etc.
          winblend = 0,
          highlights = {
            border = 'Normal',
            background = 'Normal',
          },
        },
      }
      -- Key mapping
      vim.api.nvim_set_keymap('n', '<c-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('i', '<c-\\>', '<Esc>:ToggleTerm<CR>', { noremap = true, silent = true })
    end,
  },
}
