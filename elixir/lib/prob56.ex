defmodule Prob56 do
  def run do
    10..100
    |> Enum.map(&get_max_sum_for/1)
    |> Enum.max
    |> IO.puts
  end

  defp get_max_sum_for(a) do
    10..100
    |> Enum.map(&digits_sum(a, &1))
    |> Enum.max
  end

  defp digits_sum(a, b) do
    Numbers.pow(a, b)
    |> Integer.digits
    |> Enum.sum
  end
end
