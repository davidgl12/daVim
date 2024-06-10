--JS Dap definition
require("dap").adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    -- 💀 Make sure to update this path to point to your installation
    args = { "~/dap/js-debug/src/dapDebugServer.js", "${port}" },
  },
}

--JS Dap configuration
require("dap").configurations.javascript = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch fileaa",
    program = "${workspaceFolder}/build/index.js",
    cwd = "${workspaceFolder}",
  },
}
