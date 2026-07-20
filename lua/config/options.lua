local options = {

	-- random shit
	shiftwidth = 4,
	ttyfast = true,
	smoothscroll = true,

	-- numbers
	number = true,
	relative = true,

	-- indenting stuff
	smarttab = true,
	cindent = true,
	autoindent = true,
	tabstop = 4,

	-- cursor line
	cursorline = true,

	-- clipboard
	clipboard = "unnamedplus",

}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = false,
})
