# To drive that last one home...let's turn the tables and have the string show a
# modified output, while the array thwarts the method's efforts to modify the caller's
# version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

# In this case we are using << because a_string_param is referencing the original
# object the method will mutate the original object and add rutabaga to the original object.
# pumpkinsrutabaga will print
puts "My string looks like this now: #{my_string}"
# Because the assignment operator = is used, a new object is created in memory and the original
# object is left untouched.
puts "My array looks like this now: #{my_array}"