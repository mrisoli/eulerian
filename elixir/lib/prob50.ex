require Prime
defmodule Prob50 do
  def run do
    Prime.up_to(1_000_000)
    |> Enum.reduce_while({0, []}, fn x,  {sum, primes} ->
      new_sum = sum + x
      action = if new_sum > 1_000_000, do: :halt, else: :cont
      {action, {new_sum, primes ++ [x]}}
    end)
    |> elem(1)
    |> get_consecutive_prime_sum
    |> IO.puts
  end

  defp get_consecutive_prime_sum([_head | tail]) do
    val = Enum.sum(tail)
    if Prime.is_prime(val) and val < 1_000_000 do
      val
    else
      get_consecutive_prime_sum(tail)
    end
  end
end
