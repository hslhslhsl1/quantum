%% Singular Value Decomposition

% usage
% 
% m = [1 0 0 0 2; 0 0 3 0 0 ; 0 0 0 0 0; 0 2 0 0 0]';
% 
% [cell1 cell2 cell3] = svd_quantum(m);
% 
% output = cell1*cell2*cell3.';


function [varargout] = svd_quantum(varargin)

    celldisp(varargin);

    [mat_a mat_b mat_c] = svd(varargin{1});

    varargout{1} = mat_c;
    varargout{2} = mat_b.';
    varargout{3} = mat_a;
    
end