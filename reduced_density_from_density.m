%% Reduced desity matrix from density

%Usage
% 
% numPartite = 3;
% numQ = [2 2 3];
% tempN = prod(numQ,'all');
% ro_temp = floor(rand(tempN,tempN).*100);
% 
% y = reduced_density_from_density(numPartite,numQ,ro_temp);


function [varargout] = reduced_density_from_density(varargin)
    numPartitle = varargin{1,1};

    numQ = varargin{1,2};

    tempN = prod(numQ,'all');

    ro_temp= varargin{1,3};

    temp = [];

    for i=0:(numQ(1,1)-1)
        for j=0:(numQ(1,2)-1)
            for k=0:(numQ(1,3)-1)
                temp0 = [i j k];
                temp = [temp; temp0];
            end
        end
    end
    
    [m n] = size(temp);
    
    reducedIndex = 3;
    reNum = numQ;
    reNum (:,reducedIndex) = [];
    
    tempNnew = prod(reNum,'all');
    tttemp = [];
    for i=0:(reNum(1,1)-1)
        for j=0:(reNum(1,2)-1)
                temp0 = [i j];
                tttemp = [tttemp; temp0];
        end
    end
    
    
    mappingM = [];
    ttemp = temp;
    ttemp(:,reducedIndex) = [];
    
    [mm nn] = size(ttemp);
    
    mappingM = [];
    for i=1:mm
        for j=1:tempNnew
    
            if( isequal(ttemp(i,:),tttemp(j,:)) == 1)
            mappingM = [mappingM; i j];
            end
    
        end
    end
    
    
    re_index = [];
    
    for i=0:numQ(1,reducedIndex)
       [temp1 temp2 temp3] = find(temp(:,reducedIndex)==i) ;
       re_index= [re_index; temp1'];
    end
    
    [m n] = size(re_index);
    
    
    for i=1:m
        o_temp = zeros(tempNnew,tempNnew);
    
        ttt1 = re_index(i,:);
        ttt2 = re_index(i,:);
        for j=1:n
            for k=1:n
                index1 = mappingM(ttt1(1,j),2);
                index2 = mappingM(ttt2(1,k),2);
                o_temp(index1,index2)=ro_temp(ttt1(1,j),ttt2(1,k));
            end
        end
    
        cellTemp{i} = o_temp;
    end

    varargout{1} = cellTemp;

end