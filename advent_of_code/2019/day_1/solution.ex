defmodule Solution do
  def run do
    solve_part_1()
    solve_part_2()
  end
  
  def solve_part_1 do
    get_input()
    |> Enum.map(&get_fuel_req/1)
    |> Enum.sum
  end

  def solve_part_2 do
    get_input()
    |> Enum.map(&get_added_fuel/1)
    |> Enum.sum
  end

  def get_input do 
    {:ok, data} = File.read("input.txt")
    String.split(data, ["\n"])
    |> Enum.filter(fn (item) -> item != "" end)
    |> Enum.map(&String.to_integer/1)
  end

  def get_fuel_req(mass), do: div(mass, 3) - 2

  def get_added_fuel(mass) do
    value = get_fuel_req(mass)
    if (value > 0), do:  value + get_added_fuel(value), else: 0
  end
end
