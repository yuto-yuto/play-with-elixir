defmodule Fibonacci do
  def of(n)
  def of(0), do: 0
  def of(1), do: 1
  def of(n), do: of(n - 2) + of(n - 1)
end

Enum.each(0..10, fn x ->
  IO.puts("#{x}: #{Fibonacci.of(x)}")
end)
