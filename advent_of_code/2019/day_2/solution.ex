defmodule Solution do
  def part_1 do
    get_input()
    |> set_initial_data()
    |> solve_part_1()

    # [1,9,10,3,2,3,11,0,99,30,40,50]|> solve_part_1()
  end

  def part_2 do
    reset_state = get_input() |> set_initial_data()

    for noun <- 0..99, verb <- 0..99 do
      {noun, verb}
    end
    |> Enum.filter(fn {noun, verb} ->
      reset_state |> set_initial_data(noun, verb) |> solve_part_1 === 19_690_720
    end)
    |> get_result()
  end

  @spec get_result({integer, integer}) :: integer
  def get_result([{noun, verb}]) do
    100 * noun + verb
  end

  def get_input() do
    {:ok, data} = File.read("input.txt")

    data
    |> String.trim()
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end

  @spec set_initial_data(list, integer, integer) :: list
  def set_initial_data(list, op1 \\ 12, op2 \\ 2) do
    [opcode | [_ | [_ | list]]] = list
    [opcode | [op1 | [op2 | list]]]
  end

  @spec solve_part_1(list, integer) :: integer
  def solve_part_1(list, cursor \\ 0) do
    case Enum.at(list, cursor) do
      1 -> list |> add(cursor + 1, cursor + 2, cursor + 3) |> solve_part_1(cursor + 4)
      2 -> list |> multiply(cursor + 1, cursor + 2, cursor + 3) |> solve_part_1(cursor + 4)
      99 -> hd(list)
      _ -> {:error, "Invalid OPcode"}
    end
  end

  @spec add(list, integer, integer, integer) :: integer
  def add(list, op1, op2, res) do
    value = Enum.at(list, Enum.at(list, op1)) + Enum.at(list, Enum.at(list, op2))
    List.replace_at(list, Enum.at(list, res), value)
  end

  @spec multiply(list, integer, integer, integer) :: integer
  def multiply(list, op1, op2, res) do
    value = Enum.at(list, Enum.at(list, op1)) * Enum.at(list, Enum.at(list, op2))
    List.replace_at(list, Enum.at(list, res), value)
  end
end
