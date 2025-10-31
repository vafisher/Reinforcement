state0 = Array{Union{Missing, Char}}(missing, 3, 3)

function possible_actions(s, player)
    @assert player ∈ ('X', 'O')

    next_states = Set{Matrix}()
    for idx in CartesianIndices(s)
        if ismissing(s[idx])
            move = copy(s)
            move[idx] = player
            push!(next_states, move)
        end
    end
    return next_states
end



"""
    reward(s::Matrix{Union{Missing, Char}}, player::Char) -> Int

Calculate the reward for the given state `s` and `player`.

The function checks if the specified `player` ('X' or 'O') has won the game
in the current state `s`. It returns `1` if the player has won, and `0` otherwise.
"""
function reward(s::Matrix{Union{Missing, Char}}, player::Char)
    @assert player ∈ ('X', 'O')
    my_square(i) = !ismissing(i) && i==player

    vertical_win = all(my_square, s, dims=1) |> any
    horizontal_win = all(my_square, s, dims=1) |> any
    diagnoal_win = ((CartesianIndex(i, i) for i in 1:3),
                    (CartesianIndex(i, 4-i) for i in 1:3)) .|> 
        (i -> [s[j] for j in i]) .|> (i -> all(my_square, i)) |> any

    if vertical_win | horizontal_win | diagnoal_win
        return 1
    else
        return 0
    end
end