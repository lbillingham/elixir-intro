defmodule ImperialFalls do
    def mph_at_end_of_drop(meters) do
        UnitConvert.mph_from_mps(Drop.fall_velocity(meters))
    end
    def pipe_goodness(meters) do
        Drop.fall_velocity(meters) |> UnitConvert.mph_from_mps
    end
end
