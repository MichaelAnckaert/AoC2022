defmodule Day1 do    
  def part1 do
    {_ok, data} = File.read("input_day1.txt")
    data
    |> String.split("\n")
    |> Enum.chunk_by(&(String.length(&1) == 0))
    |> Enum.filter(fn el -> case el do
                              [""] -> false
                              _ -> true
                            end
    end)
    |> Enum.map(fn sums -> Enum.map(sums, &String.to_integer/1) end)
    |> Enum.map(&Enum.sum/1)
    |> Enum.sort(&(&1 >= &2))
    |> List.first
  end
  def part2 do
    {_ok, data} = File.read("input_day1.txt")
    data
    |> String.split("\n")
    |> Enum.chunk_by(&(String.length(&1) == 0))
    |> Enum.filter(fn el -> case el do
                              [""] -> false
                              _ -> true
                            end
    end)
    |> Enum.map(fn sums -> Enum.map(sums, &String.to_integer/1) end)
    |> Enum.map(&Enum.sum/1)
    |> Enum.sort(&(&1 >= &2))
    |> Enum.take(3)
    |> Enum.sum
  end
end
