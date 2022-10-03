function t=Rot(axis,theta)

    if(axis=='X')
        t = [1         0                 0          0
            0          cos(theta)       -sin(theta) 0
            0          sin(theta)        cos(theta) 0
            0          0                 0          1 ]  ;
    
    elseif(axis=='Y')
        t = [cos(theta)   0      sin(theta)  0
            0             1              0   0
            -sin(theta)   0      cos(theta)  0
            0             0      0           1 ];
    elseif(axis=='Z')
        t = [cos(theta)  -sin(theta)    0  0
            sin(theta)    cos(theta)    0  0
            0             0             1  0
            0             0             0  1 ];
    end

end

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