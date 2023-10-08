local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

	-- Override plugin definition options

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require("custom.configs.null-ls")
				end,
			},
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end, -- Override to setup mason-lspconfig
	},

	-- override plugin configs
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	-- Install a plugin
	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	-- tabnine

	{
		"codota/tabnine-nvim",
		lazy = false,
		build = "./dl_binaries.sh",
		config = function()
			require("tabnine").setup({
				disable_auto_comment = true,
				accept_keymap = "<C-a>",
				dismiss_keymap = "<C-]>",
				debounce_ms = 800,
				suggestion_color = { gui = "#808080", cterm = 244 },
				exclude_filetypes = { "TelescopePrompt", "NvimTree" },
				log_file_path = nil, -- absolute path to Tabnine log file
			})
		end,
	},

	-- md preview
	{
		{
			"iamcco/markdown-preview.nvim",
			build = "cd app && npm install",
			ft = "markdown",
			lazy = true,
			keys = { { "gm", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" } },
			config = function()
				vim.g.mkdp_auto_close = true
				vim.g.mkdp_open_to_the_world = false
				vim.g.mkdp_open_ip = "127.0.0.1"
				vim.g.mkdp_port = "8888"
				vim.g.mkdp_browser = ""
				vim.g.mkdp_echo_preview_url = true
				vim.g.mkdp_page_title = "${name}"
			end,
		},
	},
}

return plugins
