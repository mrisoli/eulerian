defmodule Prob65 do

  defp next_for(i) when rem(i, 3) == 0, do: div(2 * i, 3)
  defp next_for(_), do: 1

  defp find(101, _d, n), do: Enum.sum(Integer.digits(n))

  defp find(i, d, n) do
    find(i + 1, n, d + n * (next_for(i)))
  end

  def run do
    find(2, 1, 2)
    |> IO.puts
  end
end
