local on_attach = function(client, bufnr)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to Declaration" })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to Definition" })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Go to Implementation" })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Symbol References" })
    vim.keymap.set("n", "dp", vim.diagnostic.goto_prev, { buffer = bufnr, desc = "Go to Next Diagnostic" })
    vim.keymap.set("n", "do", vim.diagnostic.open_float, { buffer = bufnr, desc = "Open Diagnostic Float" })
    vim.keymap.set("n", "dp", vim.diagnostic.goto_next, { buffer = bufnr, desc = "Go to Previous Diagnostic" })
end

local lspconfig = require("lspconfig")
local capabilities = require('blink.cmp').get_lsp_capabilities()
require("mason").setup()
require("mason-lspconfig").setup()
