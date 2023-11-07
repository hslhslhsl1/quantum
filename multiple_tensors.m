%% Generate tensor product among multiple

% usages

% a= eye(2);
% b= [1 0; 0 0];
% c= eye(2);
% 
% 
% [checkMat] = multiple_tensors(a,b,c);

function [varargout] = multiple_tensors(varargin)

    [mm nn] = size (varargin);

    % disp("N = "+nn);

    mat = [];
    
    for ii = 2:nn
    
        
        if(ii==2)
            a = varargin{1,1};
        else
            a = mat;
        end
    
        b= varargin{1,ii};
        
        mat = kron(a,b);

    end 

    varargout{1} = mat; 

end
