defmodule Solution do 

  def run do
    get_input()    
    |> set_initial_data()
    |> solve_part_1()
    # [1,9,10,3,2,3,11,0,99,30,40,50]|> solve_part_1()
  end

  def get_input() do
    {:ok, data} = File.read("input.txt")
    data 
    |> String.trim
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end

  def set_initial_data([opcode | [_ | [_ | list]]]), do: [opcode | [ 12 | [ 2 | list]]]

  def solve_part_1(list, cursor\\0) do
    case Enum.at(list, cursor) do
      1  -> solve_part_1(add(list, cursor+1, cursor+2, cursor+3), cursor+4)
      2  -> solve_part_1(multiply(list, cursor+1, cursor+2, cursor+3), cursor+4)
      99 -> hd(list) 
      _  -> {:error, "Invalid OPcode"}
    end
  end
  
  def add(list, op1, op2, res) do
    value =  Enum.at(list, Enum.at(list, op1)) + Enum.at(list, Enum.at(list, op2))
    List.replace_at(list, Enum.at(list, res), value)
  end
  
  def multiply(list, op1, op2, res) do
    value =  Enum.at(list, Enum.at(list, op1)) * Enum.at(list, Enum.at(list, op2))
    List.replace_at(list, Enum.at(list, res), value)
  end

end 
