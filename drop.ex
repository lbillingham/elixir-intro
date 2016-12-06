defmodule Drop do
    @moduledoc """
    Functions for caclulating free-fall in a vaccuum and in constant gravity
    """
    @doc """
    the gravity-parallel speed of a dropped object in a vaccuum.
    Parameters
    ----------
    A tuple of:
        {
         `planemo`: atom
             identifies the PLANEtary Mass Object (`:earth, :mars, :moon`)
             to determine the gravitiational acceleration.
             (defaults to `:earth` if not provided)
        `distance`: float
             the 'drop height' in meters. Must be greater than zero.
         }
    Returns
    -------
    `speed`:
        the velocity (parallel to the gravity vector) of the object
    after falling `distance`
    
     
    assumes gravitiational acceleration is constant over the
    region of interest
    """
    import :math, only: [sqrt: 1]
    @neg_err_mess "Uh oh! Failed due to distance <0"

    def fall_velocity(where) when tuple_size(where) == 1 do
        {distance} = where
        fall_velocity(:earth, distance)
    end
    
    def fall_velocity(where) do
        {planemo, distance} = where
        fall_velocity(planemo, distance)
    end
    
    defp fall_velocity(_, distance) when distance <0 do
        IO.puts @neg_err_mess
        :error
    end
    
    defp fall_velocity(:earth, distance) do
        sqrt(2 * 9.8 * distance)
    end
    
    defp fall_velocity(:mars, distance) do
        sqrt(2* 3.71 * distance)
    end
    
    defp fall_velocity(:moon, distance) do
        sqrt(2 * 1.6 * distance)
    end
    
    def casey_fall_vel(planemo, distance) when distance >= 0 do
        gravity = case planemo do
            :earth -> 9.81
            :mars ->  3.71
            :moon ->  1.6
        end
        speed = sqrt(2 * distance * gravity)
        cond do
            speed == 0 -> :rooted
            speed < 5 -> :tortoise
            speed >= 5 and speed < 10 -> :moovinsum
            speed >= 10 and speed < 20 -> :faaast
            speed >= 20 -> :speedyindeedy
        end
    end
end
    
