# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # {:a=>"hi there"}
# The << method modified the original object because informal_greeting was pointing
# to the original object.