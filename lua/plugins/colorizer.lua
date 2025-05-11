return {
	'norcalli/nvim-colorizer.lua',
	cmd = "ColorizerToggle",
	config = function()
		require("colorizer").setup({
			"*",
			css = { rgb_fn = true, RRGGBBAA = true },
			html = { names = false },
		})
	end,
}
