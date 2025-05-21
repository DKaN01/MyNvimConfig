require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { 
        "lua_ls",
        "rust_analyzer",
        "clangd",
        "jdtls",
        "pyright",
        "ts_ls",
        "emmet_ls"
    },
})
