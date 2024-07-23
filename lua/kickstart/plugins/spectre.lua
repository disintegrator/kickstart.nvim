return {
  'nvim-pack/nvim-spectre',
  dependencies = { { 'nvim-lua/plenary.nvim' } },
  -- stylua: ignore
  keys = {
    { "<leader>sg", function() require("spectre").toggle() end, desc = '[S]earch by [G]rep' },
    { "<leader>sp", function() require("spectre").open_file_search({select_word=true}) end, desc = '[S]earch current [W]ord' },
    { "<leader>sw", function() require("spectre").open_visual({select_word=true}) end, desc = '[S]earch current [W]ord' },
    { mode="v", "<leader>sw", function() require("spectre").open_visual() end, desc = 'Visual [S]earch current [W]ord' },
  },
  opts = {
    is_insert_mode = true,
  },
}
