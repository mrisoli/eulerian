require Integer
defmodule Prob64 do

  defp findPeriod(_n, _sqrt, k, _r, period) when k == 1 and period != 0 do
    if Integer.is_odd(period), do: 1, else: 0
  end

  defp findPeriod(n, sqr, k, r, period) do
    i = div(n - r * r, k)
    findPeriod(n, sqr, i, (div(sqr + r, i) * i) - r, period + 1)
  end

  defp isOddPeriod(n) do
    sqr = :math.sqrt(n)
    if floor(sqr) == sqr do
      0
    else
      findPeriod(n, floor(sqr), 1, floor(sqr), 0)
    end
  end

  defp findOddPeriods(n, periods) when n > 10_000, do: periods
  defp findOddPeriods(n, periods), do: findOddPeriods(n + 1, periods + isOddPeriod(n))

  def run do
    IO.puts findOddPeriods(2,0)
  end
end
