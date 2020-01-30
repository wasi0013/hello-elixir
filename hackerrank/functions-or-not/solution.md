# Problem Statement

https://www.hackerrank.com/challenges/functions-or-not/problem

Objective
In this problem, we touch upon a basic concept that is fundamental to Functional Programming: identifying a relation which represents a valid function.

Task
You are given a set of unique  ordered pairs constituting a relation. The -values form the domain, and the -values form the range to which they map. For each of these relations, identify whether they may possibly represent a valid function or not.

Note: You do not have to find the actual function, you just need to determine that the relation may be representative of some valid function.

Input Format

The first line contains an integer, , denoting the number of test cases. The subsequent lines describe  test cases, and the input for each test case is as follows:

The first line contains an integer, , the number of  pairs in the test case.
The  subsequent lines each contain two space-separated integers describing the respective  and  values for each ordered pair.
Constraints

N
Output Format

On a new line for each test case, print  if the set of ordered pairs represent a valid function, or  if they do not.

Sample Input

2  
3  
1 1  
2 2  
3 3  
4
1 2
2 4
3 6  
4 8  
Sample Output

YES  
YES
Explanation

Test Case 0:
, Ordered Pairs:  The set of ordered pairs represents a relation, which could represent a function such as , . Thus, we print  on a new line.

Test Case 1:
, Ordered Pairs: 
The set of ordered pairs represents a relation, which could represent a function such as , . Thus, we print  on a new line




# First Accepted Solution


```
defmodule Solution do
    def run do
        String.split(IO.read(:stdio, :all),["\n"])
        |> Enum.map(fn(lines)-> String.split(lines, [" "]) end)
        |> Enum.chunk_by(fn(list) -> length(list) end) 
        |> Enum.filter(fn([head|_]) -> length(head) == 2 end)
        |> Enum.map(fn(list)-> Enum.map(list, fn([head|_])-> head end) end) 
        |> Enum.map(fn(item) -> IO.puts(if Enum.uniq(item) == item, do: "YES", else: "NO") end)
    end
end
Solution.run
```



Links: 

    - https://elixirschool.com/en/lessons/basics/enum/