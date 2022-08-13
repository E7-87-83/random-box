# Damm's order 10 totally anti-symmetric quasigroup
# Damm, H. Michael (2004). Total anti-symmetrische Quasigruppen (PDF) (Dr. rer. nat.) (in German). Philipps-Universität Marburg. urn:nbn:de:hebis:04-z2004-05162
# http://archiv.ub.uni-marburg.de/diss/z2004/0516/pdf/dhmd.pdf
# https://en.wikipedia.org/wiki/Damm_algorithm
# code in julia


using Permutations
my_p = Permutation([3, 7, 6, 8, 4, 2, 1, 5]) 

function p(x)            # permutation (0 1 3 6 2)(4 8 5)(7)
    if (x == 7)
        return 7
    end
    if (x == 0)
        return my_p(7)
    end
    return my_p(x) == 7 ? 0 : my_p(x)
end

star_z9(x,y) = (p((y-x+9) % 9) + x) % 9

T0 = zeros(Int, 9, 9)

for x = 0:8
    for y = 0:8
        T0[x+1,y+1] = star_z9(x,y)
    end
end



T = zeros(Int, 10, 10)

for x = 0:9
    for y = 0:9
        if (x != 9 && y != 9)
           T[x+1,y+1] = T0[x+1,y+1]
        end
        if x == 9 && y != 9
           T[10, y+1] = T0[y+1,y+1]
        end
        if y == 9 && x != 9
           T[x+1, 10] = T0[x+1,x+1]
        end
        if x == y
           T[x+1, y+1] = 9
        end
    end
end

T = hcat(T[1:10,10], T[1:10, 1:9])

first_row = T[10, 1:10]
last_row = T[1, 1:10]
T[1, 1:10] = first_row
T[10, 1:10] = last_row

for x = 0:9
    for y = 0:9
        if T[x+1,y+1] == 0 || T[x+1,y+1] == 9
            T[x+1,y+1] = T[x+1,y+1] == 0 ? 9 : 0
        end
    end
end

#=
julia> T
10×10 Matrix{Int64}:
 0  1  2  3  4  5  6  7  8  9
 2  6  0  4  1  7  9  5  3  8
 3  9  7  0  5  2  8  1  6  4
 4  5  1  8  0  6  3  9  2  7
 5  8  6  2  9  0  7  4  1  3
 6  4  9  7  3  1  0  8  5  2
 7  3  5  1  8  4  2  0  9  6
 8  7  4  6  2  9  5  3  0  1
 9  2  8  5  7  3  1  6  4  0
 1  0  3  9  6  8  4  2  7  5
=#
