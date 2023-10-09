local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "clangd", }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.neocmake.setup {
  cmd = { "neocmakelsp", "--stdio" },
  filetypes = {"cmake"},
  --root_dir = root_pattern('.git', 'cmake'),
  single_file_support = true,
}

-- 
-- lspconfig.pyright.setup { blabla}
