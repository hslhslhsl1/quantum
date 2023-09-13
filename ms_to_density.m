% Density Generation from multiple quantum status

function y = ms_to_density(varargin)
    
    % celldisp(varargin);

    [m n] = size(varargin);

    % disp("M= " +m);
    % disp("N= " +n);
    
    temp = [];

    for i=1:n
        temp = [temp; varargin{i}];
    end

    y = temp*temp';
    % disp(temp03)

end