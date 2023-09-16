%% Generate multipartite Qubit System

% usages

% a= [ 0 1]';
% b= [0 1]';
% c= [ 0 1]';
% 
% 
% [checkMat] = gen_multiple_qubit(a,b,c);

function [varargout] = gen_multiple_qubit(varargin)

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
    
        [m1 n1] = size(a);
        [m2 n2] = size(b);
        
        mat = zeros(m1*m2,n1*n2);
        
        for i=1:m1
            for j=1:n1
                temp = a(i,j)*b;
                mat((i-1)*m2+1:(i-1)*m2+m2,(j-1)*n2+1:(j-1)*n2+n2) = temp;
            end
        end

    end 

    varargout{1} = mat; 

end
