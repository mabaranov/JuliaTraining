function Map(Ls, F)

    function IterMap(Rs, Ys, F)
        if Ys == []
            return Rs
        end

        head = Ys[1]
        tail = Ys[2:end]
        return IterMap(push!(Rs, F(head)), tail, F)
    end

    return IterMap([], Ls, F)
end


function Square(x)
    return x * x
end

Map([1, 5, 3, 7, 9], Square) # [1, 25, 9, 49, 81]


function Add(x)
    return x+x
end

Map([1,3,5,11,100,2], Add) # [2, 6, 10, 22, 200, 4]