global nc 
nc = 0;

data = load('QuickSort.txt');
% data = [ 9 8 7 6 5 4 3  2];
% data = [ 6 5 4 3 2 1];
data_new = quick_sort(data);

nc