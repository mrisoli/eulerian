defmodule Prob57 do
  def run do
    run(2, 3, 2, 0)
  end

  defp run(1_000, _, _, total), do: IO.puts(total)
  defp run(count, n, d, total) do
    run(count + 1, n + (2 * d), d + n, total + numerator_digits?(Integer.digits(n), Integer.digits(d)))
  end

  defp numerator_digits?(n, d) when length(n) > length(d), do: 1
  defp numerator_digits?(n, d), do: 0
end
