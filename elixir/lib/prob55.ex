defmodule Prob55 do
  def run do
    1..10_000
    |> Enum.count(&is_lychrel?/1)
    |> IO.puts
  end

  defp is_lychrel?(n) do
    is_lychrel?(n, 50)
  end

  defp is_lychrel?(_, 0), do: true
  defp is_lychrel?(n, times) do
    sum = n + (String.reverse("#{n}") |> String.to_integer)
    if Palindrome.number?(sum) do
      false
    else
      is_lychrel?(sum, times - 1)
    end
  end
end
