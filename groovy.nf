println "Hello, World!"

// comment a single config file

/*
   a comment spanning
   multiple lines
*/

x = 1
println x

x = new java.util.Date()
println x

x = -3.1499392
println x

x = false
println x

x = "Hi"
println x



def x = 'foo'


list = [10,20,30,40]
println list[0]
println list.get(0)
println list.size()



map = [a:0, b:1, c:2]
map['a'] = 'x'           
map.b = 'y'              
map.put('c', 'z')        
assert map == [a:'x', b:'y', c:'z']



foxtype = 'quick'
foxcolor = ['b', 'r', 'o', 'w', 'n']
println "The $foxtype ${foxcolor.join()} fox"

x = 'Hello'
println '$x + $y'

text = """
    Hello there James.
    How are you today?
    """
println text




list = [1,2,3]
if( list != null && list.size() > 0 ) {
  println list
}
else {
  println 'The list is empty'
}



list = ['a','b','c']

for( String elem : list ) {
  println elem
}



int fib(int n) {
    return n < 2 ? 1 : fib(n-1) + fib(n-2)
}

assert fib(10)==89

