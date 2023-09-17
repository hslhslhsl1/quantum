%% Get adjoint operator

% Usage
% 
% a = [1, -2-i, 5; 1+i, i, 4-2i];
% 
% [aa] = get_adjoint(a);

function [varargout] = get_adjoint(varargin)

    [m n] = size(varargin);

    for i=1:n
        temp = varargin{i};
        ad_a = ctranspose(temp);
        varargout{i} = ad_a;
    end

end