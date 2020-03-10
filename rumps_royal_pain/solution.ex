# Compute 333.75y6 + x2(11x2y2 – y6 – 121y4 – 2) + 5.5y8 + x/(2y) where x = 77617, y = 33096

defmodule Pow do
  # https://stackoverflow.com/a/32030190/3083094
  require Integer
  def pow(_, 0), do: 1
  def pow(x, n) when Integer.is_odd(n), do: x * pow(x, n - 1)

  def pow(x, n) do
    result = pow(x, div(n, 2))
    result * result
  end
end

defmodule Solution do
  def calc(x, y), do: 333.75 * Pow.pow(y, 6) + Pow.pow(x, 2) * (11 * Pow.pow(x, 2) * Pow.pow(y, 2) - Pow.pow(y, 6) - 121 * Pow.pow(y, 4) - 2) + 5.5 * Pow.pow(y, 8) + x / (2 * y)
end


