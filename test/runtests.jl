# using Colors, Test
using Pkg

Pkg.activate("colors", shared = true)
Pkg.develop(PackageSpec(path = joinpath(@__DIR__, "..")))

try
    Pkg.add("ColorVectorSpace")
    Pkg.test("ColorVectorSpace")
catch
end

try
    Pkg.add("ImageCore")
    Pkg.test("ImageCore")
catch
end

try
    Pkg.add("Images")
    Pkg.test("Images")
catch
end

try
    Pkg.add("Cairo")
    Pkg.test("Cairo")
catch
end

try
    Pkg.add("Makie")
    Pkg.test("Makie")
catch
end

#=
@test isempty(detect_ambiguities(Colors, Base, Core))

include("algorithms.jl")
include("conversion.jl")
include("colormaps.jl")
include("colormatch.jl")
include("colordiff.jl")
include("din99.jl")
include("display.jl")
include("parse.jl")
include("utilities.jl")

=#
