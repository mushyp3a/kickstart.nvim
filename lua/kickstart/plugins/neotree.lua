return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-tree/nvim-web-devicons', -- optional, but recommended
  },
  keys = {
    { '<leader>e', '<cmd>Neotree toggle<cr>', desc = 'NeoTree' },
    { '<tab>', 'toggle_node', desc = 'NeoTree' },
  },
  opts = {
    window = {
      mappings = {
        ['<tab>'] = {
          'toggle_node',
          nowait = false,
        },
      },
    },
  },
}
