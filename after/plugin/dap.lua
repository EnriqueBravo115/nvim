local dap = require("dap")

dap.configurations.java = {
  {
    name = "Debug (Attach) - Remote",
    type = "java",
    request = "attach",
    hostName = "127.0.0.1",
    port = 5005,
  },
  {
    name = "Debug (Launch)",
    type = "java",
    request = "launch",
    program = "",
  },
}

require("dap-go").setup {
  dap_configurations = {
    {
      type = "go",
      name = "Attach remote",
      mode = "remote",
      request = "attach",
    },
  },
  delve = {
    path = "dlv",
    initialize_timeout_sec = 20,
    port = "${port}",
    args = {},
    build_flags = "",
  },
}
