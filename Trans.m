function t=Trans(axis,dist)

if(axis=='X')
    t = [1         0        0 dist
        0          1        0 0
        0          0        1 0
        0          0        0 1]  ;            

elseif(axis=='Y')
    t = [1         0        0 0
        0          1        0 dist
        0          0        1 0
        0          0        0 1]  ;  
elseif(axis=='Z')
    t = [1         0        0  0
        0          1        0  0
        0          0        1  dist
        0          0        0  1]  ;  
end


end