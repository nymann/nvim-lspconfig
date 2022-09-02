local util = require 'lspconfig.util'

local bin_name = 'refacto'
local cmd = { bin_name, '--port=11200' }

if vim.fn.has 'win32' == 1 then
  cmd = { 'cmd.exe', '/C', bin_name, '--stdio' }
end

local root_files = {
  'pyproject.toml',
  'setup.py',
  'setup.cfg',
  'requirements.txt',
  'Pipfile',
  'pyrightconfig.json',
}

return {
  default_config = {
    cmd = cmd,
    filetypes = { 'python' },
    root_dir = util.root_pattern(unpack(root_files)),
    single_file_support = true,
    settings = {},
  },
  commands = {},
  docs = {
    description = [[
https://github.com/nymann/refactor

`refacto`, a refactoring tool for python
]],
  },
}
