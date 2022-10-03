function stick(DH,varargin)

    check_inputs(DH,varargin{:});
    
    if nargin>1
        limit_table=varargin{1};
    else
        limit_table=repmat([0 360],size(DH,1),1);
        
    end

    robot(DH,limit_table);
end




