local ls  = require("luasnip")
local s   = ls.s
local fmt = require("luasnip.extras.fmt").fmt
local i   = ls.insert_node
local rep = require("luasnip.extras").rep
local c   = ls.choice_node
local f   = ls.function_node
local t   = ls.text_node
local d   = ls.dynamic_node
local sn  = ls.sn

ls.add_snippets("all", {
  s("whoami", fmt([[{}]], {
    f(function()
      return io.popen("whoami"):read("l")
    end)
  }))
})

ls.filetype_extend("javascript", { "javascriptreact" })
ls.filetype_extend("javascript", { "html" })
