return { "nvim-lua/plenary.nvim",
	{
		"nvim-tree/nvim-web-devicons",
		commit = "0ca28b61a04fe7426cefbdd52c2647ef0e335b5f",
	},
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-buffer",
	"nvim-telescope/telescope.nvim",
	{ "ThePrimeagen/harpoon", branch = "harpoon2" },
	"nvim-lualine/lualine.nvim",
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({
				render = "background",
			})
		end,
	},
	"tpope/vim-fugitive",
	"mbbill/undotree",
	"ojroques/vim-oscyank",
	"captbaritone/better-indent-support-for-php-with-html",
}
