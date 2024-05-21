import numpy as np

A = np.arange(24)
print(A)
B = A.reshape(4,6)
print(B)
C = A.reshape(4,3,2)
print(C)
print(C.ndim, C.shape, len(C.shape), A.size)

'''
arr = np.array([[1,2,3],[4,5,6]])
print(arr.ravel())
print(arr.reshape(3,2))
print(A.reshape(4,-1))

A1 = np.swapaxes(arr,0,1)
print(arr)
print(A1)
'''
