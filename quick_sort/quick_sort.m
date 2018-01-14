function A_sort = quick_sort(A)
global nc
n = length(A);

if n==1
    A_sort = A;
else
    nc = nc + n -1;
    % choose the pivot
    [p, idx] = choose_pivot(A, 3);
    % swap pivot and the 1st element
    temp = A(idx); A(idx) = A(1); A(1) = temp;
    % partition A around p
    ii = 2;
    for jj = 2:n
        if (A(jj) < p)
            temp = A(jj); A(jj) = A(ii);  A(ii)=temp;
            ii = ii +1;
        end
        
    end
    % swap pivot and the last small element
    temp = A(1); A(1) = A(ii-1); A(ii-1) = temp;    
    
    % recursion
    A_small = A(1:ii-2);
    A_large = A(ii:jj);
    if( ~isempty(A_small))
    A_small = quick_sort(A_small);
    end
    if(~isempty(A_large))
    A_large = quick_sort(A_large);
    end
    
    A_sort = [A_small p A_large];
    
end

end
