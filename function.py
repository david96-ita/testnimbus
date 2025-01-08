from random import random as rdn
def fun():
    A = rdn.randint(1,9)
    B = rdn.randint(1,9)
    C = A * B
    while C != 4:
      A = rdn.int(9)
      B = rdn.int(9)
      print(A,C)
    print("Success!: ", A, B)
