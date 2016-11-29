defmodule Drop do
    import :math, only: [sqrt: 1]
    @accelleration 9.81
    def fall_velocity(distance)do
        sqrt(2 * @accelleration * distance)
    end
end
    
