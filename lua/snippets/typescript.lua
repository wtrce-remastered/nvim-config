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

    ls.parser.parse_snippet("for", [[
        for (let index = $1; $2; $3) {
            $0
        }
    ]]),

    ls.parser.parse_snippet("mth", [[
        const $1 = ($2) => $0
    ]]),

    ls.parser.parse_snippet("t", [[
        type $1 = $0
    ]]),

    ls.parser.parse_snippet("i", [[
        interface $1 {
            $0
        }
    ]]),

    ls.parser.parse_snippet("cpn", [[
        type $1Props = {
            $2
        }

        export const $1: React.FC<$1Props> = ({$4}) => {
            return $0
        }
    ]]),

    ls.parser.parse_snippet("ustate", [[
        const [$1, $2] = useState<$3>($0)
    ]]),

    ls.parser.parse_snippet("umemo", [[
        const $1 = useMemo(() => $0, [$2])
    ]]),

    ls.parser.parse_snippet("uref", [[
        const $1 = useRef<$2>($0)
    ]]),

    ls.parser.parse_snippet("uquery", [[
        const $1 = useQuery({
            queryKey: [$2],
            queryFn: async () => $3,
            enabled: $4
        })
    ]]),

    ls.parser.parse_snippet("ueffect", [[
        useEffect(() => {
            $0
        }, [$1])
    ]]),
}
