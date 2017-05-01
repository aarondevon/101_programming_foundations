# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

=begin
uniq creates a new array removing and duplicate objects.
Therefore, puts will print the original array
1
2
2
3

puts calls to_s on the element
if we wanted a different output we could have used p which
calls .inspect on it's argument.

also we could have written:
puts numbers.inspect
and gotten the same results as
p numbers
=end
