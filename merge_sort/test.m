global num

num=0;
v = load('IntegerArray.txt');
% v = [ 9 8 7 6 5 4 3 2 1];
% v = [ 8 2 3 4 5 6];
a= merge_sort(v, length(v));


plot(a);
disp(uint64(num));