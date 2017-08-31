defmodule Hello do
	def proc(m) do
		spawn fn x -> IO.puts "process #{x[:a]}"
	end
end

numbers = {1, 2, 3}
range = 1..100
range |> Enum.filter(fn x -> do x < 10 end) |> Enum.reduce(fn x -> do IO.puts "#{x}")
a = ["Hello", "Elixir"]
s = hd(a)
l = [{:a, 1}, {:b, 2}]
n = l ++ [c: 3]
m = %{:a => 3, :b => 4}
Hello.proc m
IO.puts "Hello world from #{s}, #{n[:c]}, #{m[:a]}"