local ls = require("luasnip")

return {
    ls.parser.parse_snippet("sout", "System.out.println($0);"),

    ls.parser.parse_snippet("if", [[
        if ($1) {
            $0
        }
    ]]),

    ls.parser.parse_snippet("ifr", [[
        if ($1) {
            return$0;
        }
    ]]),

    ls.parser.parse_snippet("mth", [[
        ${1} (${3:arguments}) {
            $0
        }
    ]]),

    ls.parser.parse_snippet("tc", [[
        try {
            $0
        } catch (Exception exception) {
        }
    ]]),

    ls.parser.parse_snippet("", [[
        try {
            $0
        } catch (Exception exception) {
        }
    ]]),
}
