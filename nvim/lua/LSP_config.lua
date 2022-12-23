require("mason").setup()
local servers = { 'clangd',  'pyright', 'sumneko_lua',  }

-- Ensure the servers above are installed
require('mason-lspconfig').setup {
  ensure_installed = servers,
}


