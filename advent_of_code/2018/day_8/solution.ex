defmodule Solution do
  def run, do: get_input() |> part2()

  def part1([child, meta | data]), do: calculate(data, child, meta, 0)

  def calculate([], _child, _meta, sum), do: sum
  def calculate(data, 0, 0, sum), do: {data, sum}
  def calculate([hd | data], 0, meta, sum), do: calculate(data, 0, meta - 1, sum + hd)

  def calculate([child, meta | data], pchild, pmeta, sum) do
    {data, sum} = calculate(data, child, meta, sum)
    calculate(data, pchild - 1, pmeta, sum)
  end

  def part2([child, meta | data]), do: value(data, child, meta, 0, %{}, child > 0)
  def value([], _child, _meta, sum, _cache, _child_flag), do: sum
  def value(data, 0, 0, sum, cache, _child_flag), do: {data, sum}

  def value([hd | data], 0, meta, sum, cache, false),
    do: value(data, 0, meta - 1, sum + hd, cache, false)

  def value([hd | data], 0, meta, sum, cache, true), do:
      value( data, 0, meta - 1, sum + Map.get(cache, length(Map.values(cache)) - hd + 1, 0), cache, true)

  def value([child, meta | data], pchild, pmeta, _sum, cache, true) do
    {data, sum} = value(data, child, meta, 0, %{}, child > 0)
    value(data, pchild - 1, pmeta, 0, Map.put(cache, pchild, sum), true)
  end

  def get_input, do:
      File.read("input.txt") |> elem(1) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
end
