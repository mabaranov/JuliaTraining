function factorial(n)
    return recursion_factorial(1, n)
end

function recursion_factorial(n, fin)
    
    if fin == 1
        return n
    end

    n = n * fin
    return recursion_factorial(n, fin-1)
    
end

println(factorial(5))

