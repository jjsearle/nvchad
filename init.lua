vim.g.lua_snippets_path = "~/.config/nvim/lua/custom/lua_snippets"

require("luasnip").filetype_extend("javascript", { "javascriptreact" })
require("luasnip").filetype_extend("javascript", { "html" })

