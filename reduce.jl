function Iterate(S, IsDone, Transform)
    if IsDone(S)
       return S
    end 
  
    S = Transform(S)
    return Iterate(S, IsDone, Transform) 
  end
  
  function is_done(Ls)
    return length(Ls) == 1
  end
  
  function transform(Ls)
    S1 = [Ls[1] * Ls[2]; Ls[3:end]] 
    return S1 
  end
  
  function FoldL(Ls, F, U)
      if Ls == []
         return []
      end
      #if is_done(Ls)
      #   return Ls[1]
      #end
  
      return Iterate(Ls, is_done, F)
  end
  
  println(FoldL([1,5,3,7,9], transform, 1))