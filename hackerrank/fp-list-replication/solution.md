# Problem Statement

https://www.hackerrank.com/challenges/fp-list-replication/problem

>Given a list, repeat each element in the list  amount of times. The input and output portions will be handled automatically by the grader. You need to write a function with the recommended method signature.
>
>Input Format
>
>The first line contains the integer  where  is the number of times you need to repeat the elements.
>The next  lines each contain an integer. These are the  elements in the array.
>
>Output Format
>
>Output each element of the original list  times, each on a separate line. You have to return the list/vector/array of  integers. The relative positions of the values should be the same as the original list provided in the input.
>
>Constraints
>
>
>
>Sample Input
>
>3
>1
>2
>3
>4
>Sample Output
>
>1
>1
>1
>2
>2
>2
>3
>3
>3
>4
>4
>4
>Recommended Method Signature
>
>Number Of Parameters: 2
>Parameters: [number of times to replicate elements, list]
>Returns: List or Vector

 

# First Accepted Solution


```
defmodule Solution do
    def run do
        [n | items] = String.split(IO.read(:stdio, :all), [" ", "\n"])
        n = String.to_integer(n)
        Enum.all?(items, fn(item) -> repeat(n, String.to_integer(item)) end) 
    end
    
    def repeat(n, item) do
        Enum.each(1..n, fn (_) -> IO.puts(item) end) 
    end
    
end

Solution.run
```



Links: 

    - https://elixirschool.com/en/lessons/basics/enum/