IO.puts("hello world")

IO.puts(:foo)
IO.puts(:foo == :bar)
IO.puts(:foo == "foo")
array = [1, 2, 3]
IO.puts(array)
# IO.inspect(array)
sum = 1 + 2
IO.puts(sum)
sum = sum + 4
IO.puts(sum)

keyword_list = [foo: "bar", hello: "world"]
IO.inspect(keyword_list)
IO.puts(keyword_list[:foo])

defmodule Calc do
  @spec sum(number, number) :: number
  def sum(a, b) do
    a + b
  end

  @spec devide(number, number) :: number
  def devide(a, b) do
    a / b
  end
end

IO.puts(Calc.sum(10, 22))
Calc.devide(10, 2) |> IO.puts()
IO.puts(Calc.devide(20, 2) |> Calc.devide(5))
