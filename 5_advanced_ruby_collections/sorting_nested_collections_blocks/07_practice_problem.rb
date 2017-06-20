# Given this code, what would be the final values of a and b? Try to work this
# out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# a is 2
# b is [3, 8]
# variable 'a' was never modified, the value in the array was modified
