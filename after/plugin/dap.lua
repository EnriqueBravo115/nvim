local dap = require('dap')

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
