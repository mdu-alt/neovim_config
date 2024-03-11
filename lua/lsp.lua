local servers = {
    lua_ls = {},
    gopls = {},
    tailwindcss = {},
    rust_analyzer = {},
    ruby_ls = {},
}

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = vim.tbl_keys(servers or {}),
    automatic_installation = true,
})

local lspconfig = require("lspconfig")

for lsp, config in pairs(servers) do
    lspconfig[lsp].setup(config)
end
