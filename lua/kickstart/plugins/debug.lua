local function get_args(config)
  local args = type(config.args) == 'function' and (config.args() or {}) or config.args or {}
  config = vim.deepcopy(config)
  ---@cast args string[]
  config.args = function()
    local new_args = vim.fn.input('Run with args: ', table.concat(args, ' ')) --[[@as string]]
    return vim.split(vim.fn.expand(new_args) --[[@as string]], ' ')
  end
  return config
end

return {
  'mfussenegger/nvim-dap',
  desc = 'Debugging support. Requires language specific adapters to be configured.',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-neotest/nvim-nio',
    'rcarriga/nvim-dap-ui',
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',
    'leoluz/nvim-dap-go',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'
    local widgets = require 'dap.ui.widgets'

    require('mason-nvim-dap').setup {
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_installation = true,

      -- You can provide additional configuration to the handlers,
      -- see mason-nvim-dap README for more information
      handlers = {},

      -- You'll need to check that you have the required things installed
      -- online, please don't ask me how to install them :)
      ensure_installed = {
        'delve',
        'chrome-debug-adapter',
        'js-debug-adapter',
        'debugpy',
      },
    }

    dapui.setup()

    -- stylua: ignore
    local bind = function ()
      vim.keymap.set("n", "<leader>dB", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, { desc = "Breakpoint Condition" })
      vim.keymap.set("n",  "<leader>db", function() dap.toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
      vim.keymap.set("n",  "<leader>dc", function() dap.continue() end, { desc = "Continue" })
      vim.keymap.set("n",  "<leader>da", function() dap.continue({ before = get_args }) end, { desc = "Run with Args" })
      vim.keymap.set("n",  "<leader>dC", function() dap.run_to_cursor() end, { desc = "Run to Cursor" })
      vim.keymap.set("n",  "<leader>dg", function() dap.goto_() end, { desc = "Go to Line (No Execute)" })
      vim.keymap.set("n",  "<leader>di", function() dap.step_into() end, { desc = "Step Into" })
      vim.keymap.set("n",  "<leader>dj", function() dap.down() end, { desc = "Down" })
      vim.keymap.set("n",  "<leader>dk", function() dap.up() end, { desc = "Up" })
      vim.keymap.set("n",  "<leader>dl", function() dap.run_last() end, { desc = "Run Last" })
      vim.keymap.set("n",  "<leader>do", function() dap.step_out() end, { desc = "Step Out" })
      vim.keymap.set("n",  "<leader>dO", function() dap.step_over() end, { desc = "Step Over" })
      vim.keymap.set("n",  "<leader>dp", function() dap.pause() end, { desc = "Pause" })
      vim.keymap.set("n",  "<leader>dr", function() dap.repl.toggle() end, { desc = "Toggle REPL" })
      vim.keymap.set("n",  "<leader>ds", function() dap.session() end, { desc = "Session" })
      vim.keymap.set("n",  "<leader>dt", function() dap.terminate() end, { desc = "Terminate" })
      vim.keymap.set("n",  "<leader>dw", function() widgets.hover() end, { desc = "Widgets" })
      vim.keymap.set("n",  "<leader>d-", function() dapui.toggle() end, { desc = "See last session result." })
    end
    bind()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    -- Install golang specific config
    require('dap-go').setup {
      delve = {},
    }
  end,
}
