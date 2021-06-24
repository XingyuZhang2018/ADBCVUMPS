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
model = Heisenberg(2,2,1.0,1.0,1.0)
bcipeps, key = init_ipeps(model; atype = Array, D=3, χ=20, tol=1e-10, maxiter=10)
res = optimiseipeps(bcipeps, key; f_tol = 1e-6, opiter = 0, verbose = true)
e = minimum(res)
@show e