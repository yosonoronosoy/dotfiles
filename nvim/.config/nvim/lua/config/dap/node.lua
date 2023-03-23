local M = {}

function M.setup()
  local dap = require("dap")

  dap.adapters.node2 = {
    type = "executable",
    command = "node",
    args = {
      os.getenv("HOME") .. "/dev/vscode-node-debug2/out/src/nodeDebug.js",
    },
  }

  dap.configurations.javascript = {
    {
      name = "Launch",
      type = "node2",
      request = "launch",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
      console = "integratedTerminal",
    },
    {
      -- For this to work you need to make sure the node process is started with the `--inspect` flag.
      name = "Attach to process",
      type = "node2",
      request = "attach",
      processId = require("dap.utils").pick_process,
    },
  }

  dap.configurations.typescriptreact = dap.configurations.javascript
  dap.configurations.typescript = dap.configurations.javascript

  require("dap.ext.vscode").load_launchjs()
end

return M
