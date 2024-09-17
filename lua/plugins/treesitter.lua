return {
	"nvim-treesitter/nvim-treesitter", 
	opts = {
		-- A list of parser names, or "all" (the listed parsers MUST always be installed)
		ensure_installed = { "c", "lua", "vim", "rust", "python", "markdown", "markdown_inline" },
		-- Install parsers synchronously (only applied to `ensure_installed`)
		sync_install = false,
		auto_install = true,
		ignore_install = { "javascript" },
		highlight = {
			enable = true,
			-- disable = { "c", "rust" },

			-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
			-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
			-- Using this option may slow down your editor, and you may see some duplicate highlights.
			-- Instead of true it can also be a list of languages
			additional_vim_regex_highlighting = false,
		},
	},
}
