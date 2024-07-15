return {
  'pocco81/high-str.nvim',
  opts = {
    verbosity = 0,
    saving_path = '/tmp/highstr/',
    highlight_colors = {
      color_0 = { '#0c0d0e', 'smart' }, -- Cosmic charcoal
      color_1 = { '#e5c07b', 'smart' }, -- Pastel yellow
      color_2 = { '#7FFFD4', 'smart' }, -- Aqua menthe
      color_3 = { '#8A2BE2', 'smart' }, -- Proton purple
      color_4 = { '#FF4500', 'smart' }, -- Orange red
      color_5 = { '#008000', 'smart' }, -- Office green
      color_6 = { '#0000FF', 'smart' }, -- Just blue
      color_7 = { '#FFC0CB', 'smart' }, -- Blush pink
      color_8 = { '#FFF9E3', 'smart' }, -- Cosmic latte
      color_9 = { '#7d5c34', 'smart' }, -- Fallow brown
    },
  },
  -- stylua: ignore
  keys = {
    { mode='v', '<leader>H0', '<cmd>HSHighlight 0<cr>', desc = '[H]ighlight Color 0' },
    { mode='v', '<leader>H1', '<cmd>HSHighlight 1<cr>', desc = '[H]ighlight Color 1' },
    { mode='v', '<leader>H2', '<cmd>HSHighlight 2<cr>', desc = '[H]ighlight Color 2' },
    { mode='v', '<leader>H3', '<cmd>HSHighlight 3<cr>', desc = '[H]ighlight Color 3' },
    { mode='v', '<leader>H4', '<cmd>HSHighlight 4<cr>', desc = '[H]ighlight Color 4' },
    { mode='v', '<leader>H5', '<cmd>HSHighlight 5<cr>', desc = '[H]ighlight Color 5' },
    { mode='v', '<leader>H6', '<cmd>HSHighlight 6<cr>', desc = '[H]ighlight Color 6' },
    { mode='v', '<leader>H7', '<cmd>HSHighlight 7<cr>', desc = '[H]ighlight Color 7' },
    { mode='v', '<leader>H8', '<cmd>HSHighlight 8<cr>', desc = '[H]ighlight Color 8' },
    { mode='v', '<leader>H9', '<cmd>HSHighlight 9<cr>', desc = '[H]ighlight Color 9' },
    { '<leader>HR', '<cmd>HSRmHighlight rm_all<cr>', desc = '[H]ighlight [R]emove all' },
    { mode='v', '<leader>HR', '<cmd>HSRmHighlight<cr>', desc = '[H]ighlight [R]emove selection' },
  },
}
