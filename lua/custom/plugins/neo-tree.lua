return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    }
    -- Add a keymap to toggle Neo-tree
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'NeoTree reveal' })
  end,
}
