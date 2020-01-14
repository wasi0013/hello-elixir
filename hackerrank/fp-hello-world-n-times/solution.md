# Problem Statement

https://www.hackerrank.com/challenges/fp-hello-world-n-times/problem


>Print "Hello World"  amount of times. The input portion will be handled automatically. You need to write a function with the recommended method signature.
>
>Input Format
>
>A single line of input containing integer , the number of times to print "Hello World".
>
>Output Format
>
>Output  lines, each containing "Hello World".
>
>Constraints
>
>
>Sample Input
>
>4
>Sample Output
>
>Hello World
>Hello World
>Hello World
>Hello World

 

# First Accepted Solution


```
defmodule Solution do
    def run do
        num = IO.gets("") |> String.trim |> String.to_integer
        print(num)
    end

    def print(num) do
        unless num === 0 do
            IO.puts "Hello World"
            print(num - 1)
        end
    end
end
Solution.run
```

**Observation:** recursion works as expected. Learned a new keyword `unless` which works similarly to other conditionals.


# Links:

    - https://elixirschool.com/en/lessons/basics/control-structures/#if-and-unless