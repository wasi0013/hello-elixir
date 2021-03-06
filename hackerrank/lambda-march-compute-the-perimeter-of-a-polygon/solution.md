# Problem Statement

https://www.hackerrank.com/challenges/lambda-march-compute-the-perimeter-of-a-polygon/problem

You are given the cartesian coordinates of a set of points in a  plane. When traversed sequentially, these points form a Polygon, , which is not self-intersecting in nature. Can you compute the perimeter of polygon ?

Input Format

The first line contains an integer, , denoting the number of points.
The  subsequent lines each contain  space-separated integers denoting the respective  and  coordinates of a point.

Constraints

No  points are coincident, and polygon  is obtained by traversing the points in a clockwise direction.
Output Format

For each test case, print the perimeter of  (correct to a scale of one decimal place).

Note: Do not add any leading/trailing spaces or units.

Sample Input

4
0 0
0 1  
1 1  
1 0

Sample Output

4


Explanation

The given polygon is a square, and each of its sides are  unit in length. , so we print  on a new line.



# First Accepted Solution


```
defmodule Solution do
    def run do
        [_|tail] = String.split(IO.read(:stdio, :all), ["\n"])
        Enum.map(tail, fn(item) -> String.split(item, [" "]) end)
        |> Enum.filter(fn(list) -> length(list) ==2 end)
        |> Enum.map(fn([x,y]) -> [String.to_integer(x), String.to_integer(y)] end)
        |> get_distances
        |> IO.puts

    end
    def get_distances(points) do
        Stream.cycle(points) |> Enum.take(length(points)+1) |> get_distance
    end
    def get_distance([x1, y1], [x2, y2]) do
        {a,b} = {x1-x2, y1-y2}
        :math.sqrt(a*a + b*b)
    end
    def get_distance([head|tail]) do
        get_distance(head, hd(tail)) + (if length(tail)>1, do: get_distance(tail), else: 0)
    end
        
end
Solution.run
```



Links: 

    - https://elixirschool.com/en/lessons/basics/enum/