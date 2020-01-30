# Problem Statement

https://www.hackerrank.com/challenges/fp-reverse-a-list/problem

You are given a list of  elements. Reverse the list without using the reverse function. The input and output portions will be handled automatically. You need to write a function with the recommended method signature.

Input Format

Each element, , of the list is displayed on a separate line.

Output Format

The output is the reverse of the input list.

Sample Input

19
22
3
28
26
17
18
4
28
0
Sample Output

0
28
4
18
17
26
28
3
22
19
Method Signature

Number Of Parameters: 1
Parameters: [list]
Returns: List or Vector
Constraints


.

For Hackers Using Clojure

This will be the outline of your function body (fill in the blank portion marked by underscores):

 (fn[lst]___________________________)
For Hackers Using Scala

This will be the outline of your function body (fill in the blank portion marked by underscores):

 def f(arr:List[Int]):List[Int] = __________________  
For Hackers Using Haskell

This will be the outline of your function body (fill in the blank portion marked by underscores):

 rev l = __________________    
For Hackers Using other Languages

You have to read input from standard input and write output to standard output. Please follow the input/output format mentioned above.

NOTE: You only need to submit the code above after filling in the blanks appropriately. The input and output section will be handled by us. The focus is on writing the correct function.

 

# First Accepted Solution


```
defmodule Solution do
    def run do
        list = String.split(IO.read(:stdio, :all), ["\n"])
        Enum.reverse(list) |> Enum.each(fn(item)-> IO.puts(item) end)
    end
end
Solution.run
```



Links: 

    - https://elixirschool.com/en/lessons/basics/enum/
