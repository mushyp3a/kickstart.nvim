return {
  'dhruvasagar/vim-table-mode',
  ft = { 'markdown', 'text', 'org' }, -- Load only for these filetypes
  cmd = { 'TableModeToggle', 'TableModeEnable' }, -- Or load on command
  config = function()
    -- Set the table corner character (optional)
    vim.g.table_mode_corner = '|'

    -- Markdown-compatible tables
    vim.g.table_mode_corner_corner = '|'
    vim.g.table_mode_header_fillchar = '-'

    -- Key mappings (optional - customize as needed)
    vim.keymap.set('n', '<leader>tm', ':TableModeToggle<CR>', { desc = 'Toggle Table Mode' })
  end,
}
