return {
  'lervag/vimtex',
  lazy = false, -- lazy-loading will disable inverse search
  config = function()
    -- PDF viewer settings
    vim.g.vimtex_view_method = 'zathura'

    -- Compiler settings
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk = {
      aux_dir = '',
      out_dir = '',
      callback = 1,
      continuous = 1,
      executable = 'latexmk',
      options = {
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
      },
    }

    -- Optional: keybindings (VimTeX provides default ones)
    vim.keymap.set('n', '<leader>ll', '<cmd>VimtexCompile<CR>')
    vim.keymap.set('n', '<leader>lv', '<cmd>VimtexView<CR>')
    vim.keymap.set('n', '<leader>lc', '<cmd>VimtexClean<CR>')
  end,
}
