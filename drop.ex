defmodule Drop do
    @moduledoc """
    Functions for caclulating free-fall in a vaccuum and in constant gravity
    """
    @doc """
    the gravity-parallel speed of a dropped object in a vaccuum.
    Parameters
    ----------
    `distance`:
        the 'drop height' in meters
    `gravity`:
        the gravitational accelertion in ms^1
    Returns
    -------
    `speed`:
        the velocity (parallel to the gravity vector) of the object
    after falling `distance`
    
     
    assumes gravitiational acceleration is constant over the
    region of interest
    """
    @spec fall_velocity(number()) :: number()
    import :math, only: [sqrt: 1]
    def fall_velocity(distance, gravity \\ 9.81)do
        sqrt(2 * gravity * distance)
    end
end
    
