using Documenter
import Pkg; Pkg.add("Reinforcement")
using Reinforcement

makedocs(;
    modules=[Reinforcement],
    authors="vafisher",
    repo="https://github.com/vafisher/Reinforcement.jl",
    sitename="Reinforcement.jl",
    format=Documenter.HTML()
)

deploydocs(;
    repo="github.com/vafisher/Reinforcement.jl",
    devbranch="main"
)