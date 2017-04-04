# ask user for two numbers
# ask the user for an operation to perform
# perform the operattion
# output the result

# reference Kernel module and use parentheses () for methods

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

prompt("Welcome to Calculator!")

loop do
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("hmm... that doesn't look like a valid number")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("hmm... that doesn't look like a valid number")
    end
  end


  prompt("What operation would you like to preform 1) add 2) subtract 3) multiply 4) divide")
  operator = Kernel.gets().chomp()

  result = case operator
            when '1'
              result = number1.to_i() + number2.to_i()
            when '2'
              result = number1.to_i() - number2.to_i()
            when '3'
              result = number1.to_i() * number2.to_i()
            when '4'
              result = number1.to_f() / number2.to_f()
  end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? Y to calculate again")

  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end
