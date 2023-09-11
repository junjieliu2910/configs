-- configurations for dap 
local dap = require("dap")
dap.adapters.cppdbg = {
    id = "cppdbg",
    type = "executable",
    command = "/home/junjieliu/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
}

-- Dap configurations for cpp
dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
        args = {"test", "b", "a"},
    },
    {
        name = 'Attach to gdbserver :1234',
        type = 'cppdbg',
        request = 'launch',
        MIMode = 'gdb',
        miDebuggerServerAddress = 'localhost:1234',
        miDebuggerPath = '/usr/bin/gdb',
        cwd = '${workspaceFolder}',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
    },
}


-- Dap configurations for c 
dap.configurations.c = dap.configurations.cpp

-- Dap configurations for rust
dap.configurations.rust = dap.configurations.cpp
