from math import ceil, floor
# wrong answer
#math.ceil(x) Return the ceiling of x as a float, the smallest integer value greater than or equal to x.
#math.floor(x) Return the floor of x as a float, the largest integer value less than or equal to x.

def karatsuba(x,y):

      #base case
       if x < 10 and y < 10: # in other words, if x and y are single digits
        return x*y

       n = max(len(str(x)), len(str(y)))
       m = int(ceil(float(n)/2))   # wrong here!  #Cast n into a float because n might lie outside the representable range of integers.

       x_H  = int(floor(x / 10**m))
       x_L = int(x % (10**m))

       y_H = int(floor(y / 10**m))
       y_L = int(y % (10**m))

    #recursive steps
       a = karatsuba(x_H,y_H)
       d = karatsuba(x_L,y_L)
       e = karatsuba(x_H + x_L, y_H + y_L) -a -d

       return int(a*(10**(m*2)) + e*(10**m) + d)



#print(karatsuba(12,12))
#print(karatsuba(0,0))
#print(karatsuba(1234,4321))
print(karatsuba(3141592653589793238462643383279502884197169399375105820974944592,
               2718281828459045235360287471352662497757247093699959574966967627))



#   wrong 8539734222673567065463550869546574495034888535765114961879601127067743044893204848617875072216249073013374895871952806582723184
# correct 8539734222673566957498846900491595793628487889746454950813687461572372213054499114931277629325900131223124341791952806582723184