local options = {
	-- random shit
	ttyfast = true,
	smoothscroll = true,
	shiftwidth = 4,
	-- line nums
	number = true,
	relativenumber = true,
	-- indentation and tabss
	smarttab = true,
	cindent = true,
	autoindent = true,
	tabstop = 4,
	-- cursor line
	cursorline = true,
	-- clipboard
	clipboard = "unnamedplus",
	-- backspace
	backspace = "indent,eol,start",
	-- keep cursor atleast 8 rows from top/bot
	scrolloff = 8,
	-- undo stuff
	swapfile = false,
	backup = false,
	undofile = true,
	-- incremental search
	incsearch = true,
	-- faster cursor hold
	updatetime = 50,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.g.clipboard = {
	name = "wl-clipboard",
	copy = {
		["+"] = "wl-copy",
		["*"] = "wl-copy",
	},
	paste = {
		["+"] = "wl-paste --no-newline",
		["*"] = "wl-paste --no-newline",
	},
	cache_enabled = 0,
}

vim.diagnostic.config({
	signs = false,
})
