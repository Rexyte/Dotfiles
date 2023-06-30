require("mason").setup()
require("mason-lspconfig").setup()

-- Setup lspconfig
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- After setting up mason-lspconfig you may set up servers via lspconfig
require("lspconfig").lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false, -- THIS IS THE IMPORTANT LINE TO ADD
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
    },
}

require("lspconfig").rust_analyzer.setup {
    capabilities = capabilities,
}
require("lspconfig").clangd.setup {
    capabilities = capabilities,
}
require("lspconfig").pyright.setup {
    capabilities = capabilities,
}
