VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("message")
end

def win_conditions_one?(first, second)
  first == 'rock' && second == 'scissors' ||
    first == 'paper' && second == 'rock' ||
    first == 'scissors' && second == 'paper' ||
    first == 'rock' && second == 'lizard' ||
  first == 'lizard' && second == 'spock'
end

def win_conditions_two?(first, second)
  first == 'spock' && second == 'scissors' ||
  first == 'scissors' && second == 'lizard' ||
  first == 'lizard' && second == 'paper' ||
  first == 'paper' && second == 'spock' ||
  first == 'spock' && second == 'rock'
end
