local Path = require("plenary.path")
local status_ok, session_manager = pcall(require, "session_manager")
if not status_ok then
    vim.notify("session_manager not found!")
    return
end


session_manager.setup {
    session_dir = Path:new(vim.fn.stdpath('data'), 'sessions'),  -- the path to store the session files
    path_replaceer = '__', 
    colon_replacer = '++',
    autoload_mode = require('session_manager.config').AutoloadMode.CurrentDir,
    autosave_last_session = true,
    autosave_ignore_not_normal = true,
    autosave_ignore_filetypes = {
        'gitcommit',
    },
    autosave_only_in_session = false,
    max_path_length = 80,
}


