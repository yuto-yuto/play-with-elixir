" Hello World! " |> IO.puts()
" Hello World! " |> String.trim() |> IO.puts()

# 2
22 |> rem(5) |> IO.puts()

defmodule FizzBuzz do
  def run(end_integer) do
    IO.puts("---- run ----")
    Enum.each(1..end_integer, fn x -> show_result(x) end)
  end

  def run2(end_integer) do
    IO.puts("---- run2 ----")

    1..end_integer
    # func/1 means that it accepts a single arg
    |> Enum.map(&fizz_buzz/1)
    |> Enum.each(&IO.puts/1)
  end

  defp fizz_buzz(x) when rem(x, 15) == 0, do: "FizzBuzz"
  defp fizz_buzz(x) when rem(x, 3) == 0, do: "Fizz"
  defp fizz_buzz(x) when rem(x, 5) == 0, do: "Buzz"
  defp fizz_buzz(x), do: x

  defp show_result(integer) do
    result(integer) |> IO.puts()
  end

  defp result(integer) do
    fizz = rem(integer, 3) == 0
    buzz = rem(integer, 5) == 0

    case {fizz, buzz} do
      {true, false} -> "Fizz"
      {false, true} -> "Buzz"
      {true, true} -> "FizzBuzz"
      _ -> integer
    end
  end
end

FizzBuzz.run(15)
FizzBuzz.run2(15)
