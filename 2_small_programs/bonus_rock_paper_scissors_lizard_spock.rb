VALID_CHOICES = %w(r p sc l sp)

def prompt(message)
  Kernel.puts("=> #{message}")
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

def display_results(player, computer)
  if win_conditions_one?(player, computer) || win_conditions_two?(player, computer)
    prompt("You won!")
  elsif win_conditions_one?(computer, player) || win_conditions_two?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice_prompt = <<-MSG
  Choose one:
     r = rock
     p = paper
     sc = scissors
     l = lizard
     sp = spock
  MSG

  choice = ''
  loop do
    prompt(choice_prompt)
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  if choice == 'r'
    choice = 'rock'
  elsif choice == 'p'
    choice = 'paper'
  elsif choice == 'sc'
    choice = 'scissors'
  elsif choice == 'l'
    choice = 'lizard'
  elsif choice == 'sp'
    choice = 'spock'
  end

  computer_choice = ["rock", "paper", "scissors", "lizard", "spock"].sample()

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end
