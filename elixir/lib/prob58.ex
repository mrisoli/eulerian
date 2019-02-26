defmodule Prob58 do
  def run do
    run(3,2,0,0,1,1)
  end

  defp run(side, _, primes, _, _, diag) when primes / diag < 0.1, do: IO.puts(side)

  defp run(side, diff, primes, count, current, diag) do
    is_prime = if Prime.is_prime(current), do: 1, else: 0
    run(side + 2, diff + 2, primes + is_prime, count + 1, current + diff, diag + 1)
  end
end
