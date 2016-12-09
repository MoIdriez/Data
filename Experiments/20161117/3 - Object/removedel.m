function [x] = removedel(x)
    x(x(:,1)==-1,:) = [];
end

