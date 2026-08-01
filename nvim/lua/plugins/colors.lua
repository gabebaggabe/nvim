local function enable_transparency()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

local function set_border_colors()
	vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#f7768e" })
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#f7768e" })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = "#f7768e" })
	vim.api.nvim_set_hl(0, "netrwDir", { fg = "#9ece6a", bg = "none" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#292e42" })
	vim.api.nvim_set_hl(0, "Visual", { bg = "#364a82" })
end

return {
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		lazy = false,
		priority = 900,
		opts = {
			style = "storm", -- "storm", "night", "moon", or "day"
			transparent = true,
			terminal_colors = false,
		},
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd.colorscheme "tokyonight"
			enable_transparency()
			set_border_colors()
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "tokyonight",
		},
	},
}
