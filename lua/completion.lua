local cmp = require("cmp")
local lspkind = require('lspkind')


cmp.setup({
		formatting = {
				format = lspkind.cmp_format({
						mode = 'symbol',
						maxwidth = 50,
						ellipsis_char = '...',
						before = function (entry, vim_item)
								return vim_item
						end
				})
		},
		mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-o>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<Tab>'] = cmp.mapping.confirm({ select = true }),
		}),
		sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'buffer' },
		}),
		snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
})
