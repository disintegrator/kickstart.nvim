return {
  'supermaven-inc/supermaven-nvim',
  event = 'VeryLazy',
  config = function()
    require('supermaven-nvim').setup {
      ignore_filetypes = {
        dashboard = true,
        NeogitCommitMessage = true,
        gitcommit = true,
        spectre_panel = true,
        toggleterm = true,
        ['neo-tree'] = true,
        DiffviewFiles = true,
      },
    }
  end,
}
