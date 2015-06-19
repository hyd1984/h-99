gray 1 = ["0","1"]
gray n = (\l ->(map ("0"++) l)++(map ("1"++) $ reverse l)) $ gray (n-1)
