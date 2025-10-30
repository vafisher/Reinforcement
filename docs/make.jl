using Documenter
using Reinforcement

makedocs(;
    modules=[Reinforcement],
    authors="vafisher",
    repo="https://github.com/vafisher/Reinforcement.jl",
    sitename="Reinforcement.jl",
    format=Documenter.HTML()
)

if haskey(ENV, "GITHUB_ACTIONS")
    deploydocs(;
        repo="github.com/vafisher/Reinforcement.jl",
        devbranch="main")
end