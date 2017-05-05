# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# You can not add a number to a string. The current statement is adding 42 to the string.

# Possible solution
puts "the value of 40 + 2 is #{40 + 2}"
# or
puts "the value of 40 + 2 is " + (40 + 2).to_s
