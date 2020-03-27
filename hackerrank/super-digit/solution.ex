defmodule Solution do
  def run do
    [n, k] = String.split(IO.read(:stdio, :all), [" ", "\n"]) |> Enum.map(&String.to_integer/1)
    super_digit(super_digit(n) * k)
  end

  def super_digit(n) when 0 < n and n <= 9, do: n
  def super_digit(n) when rem(n, 9) == 0, do: 9
  def super_digit(n), do: rem(n, 9)
end
