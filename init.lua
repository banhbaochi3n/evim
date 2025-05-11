require("config.lazy")
require("config.options")
require("config.keymaps")

-- _G.theme = "s3r0"

-- local ok, _ = pcall(vim.cmd, 'colorscheme comfy')
-- if not ok then
--   vim.cmd 'colorscheme default' -- if the above fails, then use default
-- end

local modules = {
  -- 'colorscheme',
}

for _, a in ipairs(modules) do
  local ok, err = pcall(require, a)
  if not ok then
    error("Error calling " .. a .. err)
  end
end

-- Format on save
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	group = vim.api.nvim_create_augroup("lsp", { clear = true }),
-- 	callback = function(args)
-- 		vim.api.nvim_create_autocmd("BufWritePre", {
-- 			buffer = args.buf,
-- 			callback = function()
-- 				vim.lsp.buf.format { async = false, id = args.data.client_id }
-- 			end,
-- 		})
-- 	end
-- })
