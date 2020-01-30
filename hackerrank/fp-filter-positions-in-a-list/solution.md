# Problem Statement

https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list/problem


>For a given list with  integers, return a new list removing the elements at odd positions. The input and output portions will be handled automatically. You need to write a function with the recommended method signature.
>
>Input Format
>
 >integers contained in the list, each on a separate line.
>
>Output Format
>
Output the list with the integers at odd positions removed i.e. the first element, the third element and so on. The relative positions of the remaining >even-position elements should be the same as they were in the original array. Each integer will be on a separate line.
>
NOTE: By odd positions, we mean the first, third, fifth, etc position of the array needs to be filtered out. As per programming language conventions, >these might (and they often do) correspond to indices  and so on.
>
>Sample Input
>
>2
>5
>3
>4
>6
>7
>9
>8
>Sample Output
>
>5
>4
>7
>8


# First Accepted Solution


```
defmodule Solution do
    def run do
        [_ | items] = String.split(IO.read(:stdio, :all), [" ", "\n"])
        Enum.map_every(items, 2, fn(item) -> IO.puts(item) end) 
    end
end
Solution.run
```

**observation**: `Enum.map_every` seemed handy for this task. Skipping the first item, we can map every second element quite easily.  Another idea was to use `Enum.with_index |> Enum.each` that should also work!


Links: 

    - https://elixirschool.com/en/lessons/basics/enum/