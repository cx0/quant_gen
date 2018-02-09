"""
Generate offspring given parental genotypes.
"""

function generate_offspring(parent1::Array{Int64,1}, parent2::Array{Int64,1})
    gt = Dict{Integer,Array}(0 => [0, 0], 1 => [0, 1], 2 => [1, 0], 3 => [1, 1])
    g1,g2 = rand(["11", "12", "21", "22"]) # sampling gametes
    p1 = getindex.([gt[x] for x in parent1], parse(Int, g1))
    p2 = getindex.([gt[x] for x in parent1], parse(Int, g2))
    (2 * p1) + p2
end

"""
>> XY = rand(0:3,1000000)
>> XX = rand(0:3,1000000)
>> kid = generate_offspring(XY, XX)
"""
