square = { num -> num * num }

x = [ 1, 2, 3, 4 ].collect(square)
println x

printMap = { a, b -> println "$a with value $b" }
values = [ "Yue" : "Wu", "Mark" : "Williams", "Sudha" : "Kumari" ]
values.each(printMap)
