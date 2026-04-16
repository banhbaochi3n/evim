require("config.lazy")
require("config.options")
require("config.keymaps")

-- _G.theme = "s3r0"

-- local ok, _ = pcall(vim.cmd, 'colorscheme comfy')
local ok, _ = pcall(vim.cmd, 'colorscheme gruber-darker')
if not ok then
  vim.cmd 'colorscheme default' -- if the above fails, then use default
end

-- local modules = {
--   -- 'colorscheme',
-- }
--
-- for _, a in ipairs(modules) do
--   local ok, err = pcall(require, a)
--   if not ok then
--     error("Error calling " .. a .. err)
--   end
-- end

local lsp = {
    'clangd',
}

for _, server in ipairs(lsp) do
    vim.lsp.enable(server)
end

