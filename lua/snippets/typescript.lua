local ls = require("luasnip")

return {
    ls.parser.parse_snippet("sout", "console.log($0)"),

    ls.parser.parse_snippet("if", [[
        if ($1) {
            $0
        }
    ]]),

    ls.parser.parse_snippet("ifr", [[
        if ($1) {
            return$2;
        }
    ]]),
}
