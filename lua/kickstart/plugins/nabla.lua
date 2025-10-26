return {
  'jbyuki/nabla.nvim',
  config = function()
    -- keymap to toggle inline rendering
    vim.keymap.set('n', '<leader>m', function()
      require('nabla').toggle_virt()
    end, { desc = 'Toggle Nabla inline math' })
  end,
}
