function a = merge_sort(v, l)
global num

a = zeros(1,l);

if l==1
    a=v;
else 
    m = floor(l/2);
    n = l-m;
    
    a1 = merge_sort(v(1:m), m);
    a2 = merge_sort(v(m+1:l), n);

    nn = 1;
    mm = 1;
    for ll = 1:l
        if mm<=m && nn<=n
            if a1(mm)<a2(nn)
            a(ll) = a1(mm);
            mm = mm+1;
            else 
            a(ll) = a2(nn);
            nn = nn+1;
            num = num + (m - mm+1);
            end
        elseif mm>m && nn<=n
            a(ll) = a2(nn);
            nn = nn +1;
        elseif nn>n && mm<=m
            a(ll) = a1(mm);
            mm = mm+1;
        end
            
            

        
    end
    




end
