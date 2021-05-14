module ADBCVUMPS

using Zygote
using OMEinsum
using BCVUMPS
using BCVUMPS: HamiltonianModel

export TFIsing, Heisenberg
export hamiltonian, HamiltonianModel
export init_ipeps, optimiseipeps

include("hamiltonianmodels.jl")
include("autodiff.jl")
include("bcipeps.jl")
include("variationalipeps.jl")

end
