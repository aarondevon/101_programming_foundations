require 'json'
# ask user for two numbers
# ask the user for an operation to perform
# perform the operattion
# output the result

# reference Kernel module and use parentheses () for methods



def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  num == num.to_i.to_s
end

def float?(input)
  num == num.to_f.to_s
end

def operation_to_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
         end
    word
end

file = File.read('bonus_calculator.json')

messages_hash = JSON.parse(file)

prompt(messages_hash['welcome'])

name = ''
loop do
  name = Kernel.gets.chomp()

  if name.empty?
    prompt(messages_hash['valid_name'])
  else
    break
  end
end

prompt(messages_hash['hi_name'])

loop do # main loop
  number1 = ''
  loop do
    prompt(messages_hash['first_number'])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages_hash['number_error'])
    end
  end

  number2 = ''
  loop do
    prompt(messages_hash['second_number'])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages_hash['number_error'])
    end
  end

  prompt(messages_hash['operator_prompt'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages_hash['operation_error'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("#{messages_hash['result']} #{result}")

  prompt(messages_hash['another_calculation'])

  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
