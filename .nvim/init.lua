-- netrw config
vim.api.nvim_command('filetype plugin on')
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_preview = 1

-- ime func
local autocmd = vim.api.nvim_create_autocmd

if (vim.fn.has('win64')) then
  local zenhan = '/mnt/c/bin/zenhan.exe'
  local win32yank = '/mnt/c/bin/win32yank.exe'
  autocmd('InsertLeave', {
    pattern = '*',
    command = ':call system("' .. zenhan .. ' 0")'
  })

  autocmd('CmdlineLeave', {
    pattern = '*',
    command = ':call system("' .. zenhan .. ' 0")'
  })

  vim.opt.clipboard = 'unnamedplus'
  vim.g.clipboard = {
    name = 'win32yank-wsl',
    copy = {
      ['+'] = win32yank .. ' -i --crlf',
      ['*'] = win32yank .. ' -i --crlf'
    },
    paste = {
      ['+'] = win32yank .. ' -o --lf',
      ['*'] = win32yank .. ' -o --lf'
    },
    cache_enable = 0,
  }
end
