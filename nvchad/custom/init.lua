vim.g.maplocalleader = " "
local autocmd = vim.api.nvim_create_autocmd

autocmd("InsertLeave", {
	pattern = "*",
	command = ':call system("${zenhan} 0")',
})

autocmd("CmdlineLeave", {
	pattern = "*",
	command = ':call system("${zenhan} 0")',
})

vim.opt.clipboard = "unnamedplus"
if vim.fn.has("wsl") then
	vim.g.clipboard = {
		name = "win32yank-wsl",
		copy = {
			["+"] = "win32yank.exe -i --crlf",
			["*"] = "win32yank.exe -i --crlf",
		},
		paste = {
			["+"] = "win32yank.exe -o --lf",
			["*"] = "win32yank.exe -o --lf",
		},
		cache_enable = 0,
	}
end
