
# Целочисленный цикл

function For(A, B, S, P)
    if A > B
       return
    end 
    P(A)
    For(A+S, B, S, P)   
 end
 
 For(1,10,2,println) # печать значений 1,4,7,10




 # Цикл по спискам

 function ForAll(Ls, P)
    if Ls == []
       return
    end
    head = Ls[1]
    tail = Ls[2:end]
    P(head)
    ForAll(tail, P)
end

ForAll([3,2,1],println) # печать каждого элемента списка [3,2,1]




# Цикл с аккумулятором для диапазона с шагом

function ForAcc(A, B, S, P, Acc)
    if A > B
       return Acc
    end 
    Acc = P(Acc, A)
    ForAcc(A+S, B, S, P, Acc)   
 end
 
 function Sum(x,y)
   return x + y
 end
 
 println( ForAcc(1,5,1,Sum,0) ) # суммирование всех значении в диапазоне



 
 # Цикл с аккумулятором для обработки списков

function ForAllAcc(Ls, P, Acc)
    if Ls == []
       return Acc
    end
    head = Ls[1]
    tail = Ls[2:end]
    Acc = P(Acc, head)
    ForAllAcc(tail, P, Acc)
end

function Sum(x,y)
  return x + y
end

println( ForAllAcc([3,2,1,0,-5],Sum, 0) ) # сумма всех элементов списка