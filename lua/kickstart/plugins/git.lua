return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
    'nvim-telescope/telescope.nvim',
  },
    -- stylua: ignore
    keys = {
      { '<leader>go', function() require('neogit').open { kind = 'split' } end, desc = 'Neo[G]it [O]pen', },
      { '<leader>gc', function() require('neogit').open { 'commit', kind = 'split' } end, desc = 'Neo[G]it [C]ommit', },
      { '<leader>gb', function() require('neogit').open { 'branch', kind = 'split' } end, desc = 'Neo[G]it [B]ranch', },
    },
  config = true,
}
