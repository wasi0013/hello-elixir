# Problem Statement

https://www.hackerrank.com/challenges/fp-solve-me-first/problem


>This is an introductory challenge. The purpose of this challenge is to give you a working I/O template in your preferred language. It includes scanning  integers from STDIN, calling a function, returning a value, and printing it to STDOUT.
>
>Your task is to scan two numbers,  and  from STDIN, and print the sum  on STDOUT.
>
>Note: The code has been saved in a template that you can submit if you want.
>
>Input Format
>
>You are given two integers,  and  on separate lines.
>
>Output Format
>
>Output an integer that denotes 
>
>Constraints
>
>
>Sample Input
>
>2
>3
>Sample Output
>
>5
 

# First Accepted Solution


```
defmodule Solution do
    def run do
        {a, _} = IO.gets('') |> Integer.parse
        {b, _} = IO.gets('') |> Integer.parse
        IO.puts(a + b)
    end
end

Solution.run
```

**Observation:** Integer.parse was returning more than one items, so I had to pick the first one.


# Somewhat re-factored Solution


```
defmodule Solution do
    def run do
        a = IO.gets('') |> Integer.parse |> elem(0)
        b = IO.gets('') |> Integer.parse |> elem(0)
        IO.puts(a + b)
    end

end

Solution.run

```
**Observation:** used `elem` to get rid of those weird Curly braces. It seemed like first bracket is necessary for the `IO.gets('')` function call (Perhaps, for the piping?). Without brackets we get runtime error.
  

# Another Iteration


```
defmodule Solution do
    def run do
        a = IO.gets('') |> String.trim |> String.to_integer
        b = IO.gets('') |> String.trim |> String.to_integer
        IO.puts a + b
    end
end
Solution.run


```

**Observation:** `Integer.parse` has some issues so, switched to another alternative.

# Resources & Links visited

 - https://elixirschool.com/en/lessons/basics/functions/
 - https://elixir-lang.org/getting-started/io-and-the-file-system.html#the-io-module
 - https://hexdocs.pm/elixir/IO.html
 - https://stackoverflow.com/questions/36292620/elixir-when-to-use-ex-and-when-exs-files
 - https://stackoverflow.com/questions/41071115/reading-integers-from-console
 - https://groups.google.com/forum/#!topic/elixir-lang-core/PZFNes9w-aU
