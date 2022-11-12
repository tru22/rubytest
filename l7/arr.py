arr = [3, 2, 5]

def swap(a, i, j):
    tmp = a[i]
    a[i] = a[j]
    a[j] = tmp

print(arr)
swap(arr, 0, 2)
print(arr)
