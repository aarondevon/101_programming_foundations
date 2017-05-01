# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names.
# Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the
# original array between method calls)?

p numbers.delete_at(1)
# this will delete the value at index one, in this case that would be the value
# 2. delete_at will also return what was removed.
p numbers.delete(1)
# this will delete 1 fromt he array. delete will also return what was removed.
