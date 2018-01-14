function [p, idx] = choose_pivot(A, mode)

% choose 1st
if (mode ==1)
    p = A(1);
    idx =1;
end


% choose last
if (mode ==2)
    p = A(end);
    idx = length(A);
end

% choose median of the first, middle, and end
if(mode ==3)
    n = length(A);
%      m = ceil(n/2);
%     temp = [A(1) A(m) A(n)];
%     
%     [~, mm] = sort(temp);
%     
%     if(mm(1) ==2)
%         p = A(1); idx = 1;
%     elseif (mm(2) ==2)
%         p = A(m); idx = m;
%     else
%         p = A(n); idx = n;
%     end
    
    m = ceil(n/2);
    
    a1=A(1); a2 = A(m); a3  =A(n);
    if ((a1 > a2) && (a2 >a3)) || ((a3>a2) && (a2>a1))
        p=a2; idx = m;
    elseif ((a1>a3) && (a3>a2)) || ((a2>a3) && (a3>a1))
        p=a3; idx = n;
    else
        p=a1; idx =1;
    end
     disp([n, m]);
end

end
