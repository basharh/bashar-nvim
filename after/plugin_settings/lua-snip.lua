local ls = require("luasnip")

require("luasnip.loaders.from_snipmate").lazy_load({ paths = { "~/work/sandbox/snippets" } })
vim.keymap.set({"i"}, "<Tab>", function() ls.expand() end, {silent = true})

--vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = false})
--vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
--vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

--vim.keymap.set({"i", "s"}, "<C-E>", function()
	--if ls.choice_active() then
		--ls.change_choice(1)
	--end
--end, {silent = true})
