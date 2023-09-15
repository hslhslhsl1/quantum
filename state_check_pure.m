%% Check pure or mixed

% Usage
%
% x1 = [1 0]';
% x2 = [0 1]';
% x3 = [1 1]';
% 
% [check1, check2, check3] = state_check_pure(x1,x2, x3);
% 
% check3

function [varargout] = state_check_pure(varargin)
    
    celldisp(varargin);

    [m n] = size(varargin);
    disp("n = "+ n);

    output = [];
    for i=1:n
        temp = varargin{i};
        ro = temp*temp';
        ro_2 = ro*ro;

        tr_val = trace(ro_2);
        pureState = 0;
        if(tr_val ==1)
            pureState =1;
        else
            pureState = 0;
        end
        varargout{i} = pureState;
    end


end