# ask user for two numbers
# ask the user for an operation to perform
# perform the operattion
# output the result

# reference Kernel module and use parentheses () for methods

Kernel.puts("Welcome to Calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the first second?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to preform 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()

end

Kernel.puts("The result is #{result}")
