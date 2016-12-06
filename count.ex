defmodule Count do

    def countdown(from) when from > 0 do
        IO.inspect(from)
        countdown(from-1)
    end
    def countdown(_) do
        IO.puts('launch')
    end
    
    def countup(limit) do
        countup(0, limit)
    end
    
    defp countup(count, limit) when count <= limit do
        IO.inspect(count)
        countup(count+1, limit)
    end
    defp countup(count, limit) do
        IO.puts('done counting')
    end
end
