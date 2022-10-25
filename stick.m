%This work is done for project 1 of ELC 4330 in Fall 2022
%
% Group # 01
%Group Member:
%Stephen E. Balzora
%Irrtisum Khan
%
%Project_01.m is a test code for the project and is not required to be
%submitted
%
%at least Matlab R2020b is required to run the app



function stick(DH,varargin)
%stick is a function of a DH table and a variable length input argument
%first need to check inputs
    check_inputs(DH,varargin{:});
    % checking for all inputs of varargin
    if nargin>1
        limit_table=varargin{1};
        %if number of input arguments >1, set the limit table
    else
        limit_table=repmat([0 360],size(DH,1),1);
        %if number of in put arguments </= 1, then limit table is a
        %repeating matrix of [0 360], with the same number of rows as the
        %DH matrix
    end
%calling stick function will launch the robot MatLAB application
    robot(DH,limit_table);
end




