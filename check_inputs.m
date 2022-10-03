function check_inputs(DH,varargin)

    if size(DH,2)~=4
        error("Shouldn't there be 4 columns in the DH table?");
        
    elseif nargin>1
        if size(DH,1)~=size(varargin{1},1)
            error("Number of limits should be equal to number of joints");
            
        end
        if size(varargin{1},2)~=2
            error("Hey! Put both limits for each joint!")
            
        end
    else
        
    end
    

end