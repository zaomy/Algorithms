% graph = dlmread ('karger_min_cut_input.txt');
graph = dlmread ('kargerMinCut.txt');
N = size(graph,1);
GM = zeros(N,N);
for nn = 1: N
    temp = graph(nn,2:end);
    temp(temp==0) = [];
    GM(nn,temp) = 1;
    GM(temp,nn) = 1;
end
n_best = sum(sum(GM));
ite = 0;
GM0 = GM;
for kk = 1:40000
    GM = GM0;
    while (size(GM,1)>2)
        [a, b] = find(GM~=0);
        s = randi([1, size(a,1)], 1);
        
        a0 = a(s); b0 = b(s); % a0 is row index; b is col index
        temp1 = GM(b0,:) + GM(a0,:);
        GM(b0,:) = temp1;
        GM(:,b0) = temp1(:);
        
        GM(a0,:) = [];
        GM(:,a0) = [];
        GM = GM - diag(diag(GM));
        
        
    end
    n = GM(1,2);
    if (n<=n_best)
        n_best = n;
    end
    ite = ite +1;
    display(['number of iteration = ', num2str(ite)]);
    display(['n best = ', num2str(n_best)]);
    
end



