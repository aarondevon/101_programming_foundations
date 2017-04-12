require 'yaml'
require 'pry'

MESSAGES = YAML.load_file('mortgage_car_loan_messages.yml')

# reference Kernel module and use parentheses () for methods

def prompt(message)
  Kernel.puts("=> #{message}")
end

def messages(message)
  MESSAGES[message]
end

def valid_number?(input)
  input.to_f > 0 && !input.empty?
end

def loan_to_float(loan_amount)
  loan_amount.to_f
end

def apr_conversion(apr)
  apr.to_f / 100
end

def calculate_length_of_loan_months(length_of_loan_years)
  length_of_loan_years.to_i * 12
end

def calculate_monthly_apr(apr)
  apr_conversion(apr) / 12
end

def monthly_payment(loan_amount, apr, loan_years)
  principle = loan_to_float(loan_amount)
  monthly_apr = calculate_monthly_apr(apr)
  length_of_loan = calculate_length_of_loan_months(loan_years)

  payment = principle * (monthly_apr / (1 - (1 + monthly_apr)**-length_of_loan))
  payment.round(2)
end

def validation_loop
  number = ''
  loop do
    number = gets.chomp
    number.sub!(/[,]/, '')
    break if valid_number?(number)
    prompt(messages('number_error'))
  end
  number
end

prompt(messages('welcome'))

name = ''
loop do
  name = gets().chomp()
  break if !name.empty?() && !name.start_with?(' ')
  prompt(messages('valid_name'))
end

prompt("#{messages('hi_name')} #{name}")

loop do # main loop
  prompt(messages('loan_amount'))

  loan_amount = validation_loop()

  prompt(messages('apr'))

  apr = validation_loop()

  prompt(messages('loan_years'))

  loan_years = validation_loop()

  prompt(messages('calculating'))

  payment = monthly_payment(loan_amount, apr, loan_years)

  prompt("#{messages('result')}#{payment}")

  prompt(messages('another_calculation'))

  answer = gets().chomp()

  break unless answer.downcase().start_with?('y')
end
