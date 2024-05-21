import numpy as np

A = np.array([[1,2,3],[4,5,6]])
print(A)

B = A.copy()

C = np.zeros((2,3))
print(C)

D = np.ones((3,2))
print(D)

modified_A = np.zeros_like(A)
print(A)
print(modified_A)

modified_B = np.ones_like(A)
print(A)
print(modified_B)

E = np.eye(3)
print(E)

From = 2.5
To = 7
Step = 0.5

P = np.arange(From, To, Step)
print(P)

P_1 = np.arange(5)
print(P_1)

P_2 = np.arange(10, 18)
print(P_2)

Z = np.zeros((2,3), 'int')
print(Z)

Y = np.ones((3,3), 'complex')
print(Y)

X = np.ones((3,2))
modified_X = X.astype('str')
print(modified_X)

print(A[1,1])
print(A[1])
print(A[1][1])

print(A[1,:])
print(A[:,1])

arr = np.arange(5)
print(arr)
print(arr[-1])
print(arr[0:4:2])
# from to step

I = np.array([[False,False,True],[True,False,True]])
A[I] = 0
print(A)

I_1 = I.copy()
I_2 = np.array([[False, True, False],[False, False, True]])
I_3 = np.logical_and(I_1, I_2)
print(I_1)
print(I_2)
print(I_3)

I_4 = np.logical_not(I_3)
print(I_4)










































