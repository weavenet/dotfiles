let g:clojure_maxlines = 100

let @a = ":%Eval\n"
let @e = ":Eval\n"
let @f = ":Cljfmt\n"
let @l = ":!bash scripts/repl.sh restart\n"
let @o = ":set cmdheight=1\n"
let @p = ":RainbowParenthesesToggle\n"
let @t = ":Eval\n:Eval (clojure.test/run-tests)\n"
let @w = ":set cmdheight=15\n"

let g:rainbow_active = 1
