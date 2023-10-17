import math 
from exercise4_1 import calculate_discriminant
def print_roots(a, b, c):
    dis = calculate_discriminant(a, b, c)
    if dis > 0:
        sol1 = (-b + math.sqrt(dis))/(2*a)
        sol2 = (-b - math.sqrt(dis))/(2*a)
        print("solution 1:", sol1)
        print("solution  2:", sol2)
    elif dis == 0:
        sol = -b / (2*a)
        print("solution :", sol)
    else:
        print("No real solutions")
print_roots(1,2,1)
