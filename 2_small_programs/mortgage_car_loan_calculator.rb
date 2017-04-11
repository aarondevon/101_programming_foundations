require 'yaml'

MESSAGES = YAML.load_file('mortgage_car_loan_messages.yml')

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
  p = loan_to_float(loan_amount)
  j = calculate_monthly_apr(apr)
  n = calculate_length_of_loan_months(loan_years)
  payment = p * (j / (1 - (1 + j)**(-n)))
  payment.round(2)
end

prompt(messages('welcome'))

name = ''
loop do
  name = gets().chomp()
  break if !name.empty?()
  prompt(messages('valid_name'))
end

prompt("#{messages('hi_name')} #{name}")

loop do # main loop
  prompt(messages('loan_amount'))

  loan_amount = ''
  loop do
    loan_amount = gets().chomp()
    loan_amount.sub!(/[,]/, '')
    break if valid_number?(loan_amount)
    prompt(messages('number_error'))
  end

  prompt(messages('apr'))

  apr = ''
  loop do
    apr = gets().chomp()
    break if valid_number?(apr)
    prompt(messages('number_error'))
  end

  prompt(messages('loan_years'))

  loan_years = ''
  loop do
    loan_years = gets.chomp
    break if valid_number?(loan_years)
    prompt(messages('number_error'))
  end

  prompt(messages('calculating'))

  payment = monthly_payment(loan_amount, apr, loan_years)

  prompt("#{messages('result')}#{payment}")

  prompt(messages('another_calculation'))

  answer = gets().chomp()

  break unless answer.downcase().start_with?('y')
end
