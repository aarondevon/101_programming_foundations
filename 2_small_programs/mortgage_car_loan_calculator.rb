require 'yaml'

MESSAGES = YAML.load_file('mortgage_car_loan_messages.yml')

# Languages supported are
# English: eng
# German: ger
LANGUAGE = 'eng'

# Get users name
# Get loan amount
# Get APR
# Get loan duration in years

# Calculate monthly interest
# Calculate loan duration in months

# reference Kernel module and use parentheses () for methods

def prompt(message)
  Kernel.puts("=> #{message}")
end

def messages(message, lang='eng')
  MESSAGES[lang][message]
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input == input.to_i().to_s()
end

def float?(input)
  input == input.to_f().to_s()
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = gets().chomp()
  break if !name.empty?()
  prompt(messages('valid_name', LANGUAGE))
end

prompt("#{messages('hi_name', LANGUAGE)} #{name}")

loop do # main loop
  prompt(messages('loan_amount', LANGUAGE))

  loan_amount= ''
  loop do
    loan_amount = gets.chomp
    loan_amount.sub!(/[,]/, '')
    break if valid_number?(loan_amount)
    prompt(messages('number_error', LANGUAGE))
  end

  prompt(messages('another_calculation', LANGUAGE))

  answer = gets.chomp

  break unless answer.downcase().start_with?('y') == 'y'

end
