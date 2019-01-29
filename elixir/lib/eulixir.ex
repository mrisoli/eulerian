defmodule Eulixir do
  def run(n) do
    apply(:"Elixir.Prob#{n}", :run, [])
  end

  def run do
    n = IO.gets "prob number? "
    case Integer.parse(n) do
      {x, _} when is_integer(x) -> run(x)
      :error -> IO.puts "Invalid Option"
    end
  end
end
