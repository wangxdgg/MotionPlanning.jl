module MotionPlanning

using PyPlot
using ArrayViews
using Devectorize
using Iterators
# using HypothesisTests
using Distances
using KDTrees
# using Graphs
using ImmutableArrays

### Planning Primitives
export AbstractState, State, Path

abstract AbstractState
typealias State Union(AbstractVector, AbstractState)
typealias Path{T<:State} Vector{T}

### Includes
include("utilities/collections.jl")
include("collisioncheckers.jl")
include("nearneighbors.jl")
# include("obstacles.jl")
include("goals.jl")
include("statespaces.jl")
include("problems.jl")
include("sampling.jl")
include("planners.jl")
include("postprocessors.jl")
include("plotting.jl")

end # module
