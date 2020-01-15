# Problem Statement

https://www.hackerrank.com/challenges/fp-sum-of-odd-elements/problem

You are given a list. Return the sum of odd elements from the given list. The input and output portions will be handled automatically. You need to write a function with the recommended method signature.

Constraints

The list will have  elements.
Each element will be an integer  where .

Sample Input

3
2
4
6
5
7
8
0
1
Sample Output

16
Explanation

Sum of odd elements is 

Method Signature

Number Of Parameters: 1
Parameters: [list]
Returns: Number
For Hackers Using Clojure

This will be the outline of your function body (fill in the blank portion marked by underscores):

 (fn[lst]___________________________)
For Hackers Using Scala

This will be the outline of your function body (fill in the blank portion marked by underscores):

 def f(arr:List[Int]):Int = __________________
For Hackers Using Haskell

This will be the outline of your function body (fill in the blank portion marked by underscores):

 f arr = ______________________
For Hackers Using other Languages

You have to read input from standard input and write output to standard output. Please follow the input/output format mentioned above.

NOTE: You only need to submit the code above after filling in the blanks appropriately. The input and output section will be handled by us. The focus is on writing the correct function.
# First Accepted Solution


```
defmodule Solution do
    def run do
        items = String.split(IO.read(:stdio, :all),["\n"]) |> Enum.map(fn(item) -> String.to_integer(item) end)
        IO.puts(Enum.sum(Enum.filter(items, fn (item)-> rem(item, 2) != 0 end)))
    end
end

Solution.run
```



Links: 

    - https://elixirschool.com/en/lessons/basics/enum/
