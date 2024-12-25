```elixir
list = [1, 2, 3, 4, 5]

# Solution: Handle the empty list case explicitly 
result = if Enum.empty?(list), do: 0, else: Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
end)

IO.puts(result) 

#Alternative solution using Enum.sum and Enum.filter
result2 = Enum.sum(Enum.filter(list, &(&1 > 3)))
IO.puts(result2)
```