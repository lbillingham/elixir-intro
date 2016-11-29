defmodule UnitConvert do
    def mph_from_mps(mps) do
        kph = kph_from_mps(mps)
        mph_from_kph(kph)
    end
    
    def kph_from_mps(mps) do
        3.6 * mps
    end
    
    def mph_from_kph(kph) do
        0.621371192 * kph
    end
end
