using ADBCVUMPS
using BCVUMPS
using CUDA
using Random
using Test
using OMEinsum
using Optim
using Zygote
CUDA.allowscalar(false)

Random.seed!(100)
model = Kitaev_Heisenberg(-80.0)
bulk, key = init_ipeps(model; atype = Array, D=2, χ=20, tol=1e-10, maxiter=10)
res = optimiseipeps(bulk, key; f_tol = 1e-20, opiter = 1000, verbose = true)
e = minimum(res)
@show e