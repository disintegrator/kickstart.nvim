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
    { mode='x', '<leader>j0', ':<c-u>HSHighlight 0<cr>', desc = '[H]ighlight Color 0' },
    { mode='x', '<leader>j1', ':<c-u>HSHighlight 1<cr>', desc = '[H]ighlight Color 1' },
    { mode='x', '<leader>j2', ':<c-u>HSHighlight 2<cr>', desc = '[H]ighlight Color 2' },
    { mode='x', '<leader>j3', ':<c-u>HSHighlight 3<cr>', desc = '[H]ighlight Color 3' },
    { mode='x', '<leader>j4', ':<c-u>HSHighlight 4<cr>', desc = '[H]ighlight Color 4' },
    { mode='x', '<leader>j5', ':<c-u>HSHighlight 5<cr>', desc = '[H]ighlight Color 5' },
    { mode='x', '<leader>j6', ':<c-u>HSHighlight 6<cr>', desc = '[H]ighlight Color 6' },
    { mode='x', '<leader>j7', ':<c-u>HSHighlight 7<cr>', desc = '[H]ighlight Color 7' },
    { mode='x', '<leader>j8', ':<c-u>HSHighlight 8<cr>', desc = '[H]ighlight Color 8' },
    { mode='x', '<leader>j9', ':<c-u>HSHighlight 9<cr>', desc = '[H]ighlight Color 9' },
    { '<leader>jr', '<cmd>HSRmHighlight rm_all<cr>', desc = '[H]ighlight [R]emove all' },
    { mode='x', '<leader>jr', ':<c-u>HSRmHighlight<cr>', desc = '[H]ighlight [R]emove selection' },
  },
}
