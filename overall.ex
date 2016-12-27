defmodule Overall do
    def product([]) do 
        IO.puts("prod/1 with empty list")
        0
    end
    def product(list) do
        IO.puts("prod/1")
        product(list, 1)
    end
    def product([], accumulated_product) do
        IO.puts("prod/2 with /1 empty list")
        accumulated_product
    end
    def product([head | tail], accumulated_product) do
        IO.puts("prod/2")
        IO.puts("head = #{head}")
        IO.puts("tail = #{inspect tail}")
        IO.puts("accumulated_product = #{accumulated_product}")
        product(tail, head * accumulated_product) 
    end
end