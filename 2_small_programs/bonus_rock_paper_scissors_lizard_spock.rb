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

def won_round?(player, computer)
  win_conditions_one?(player, computer) || win_conditions_two?(player, computer)
end

prompt("Welcome to Rock Paper Scissors Lizard Spock")
prompt("First to 5 wins the game")
player_score = 0
computer_score = 0

loop do
  prompt("Player: #{player_score} Computer: #{computer_score}")

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

  if won_round?(choice, computer_choice)
    player_score += 1
  elsif won_round?(computer_choice, choice)
    computer_score += 1
  end

  if player_score == 5
    prompt('You won the game!')
    break
  elsif computer_score == 5
    prompt('The computer won the game. Better luck next time.')
    break
  end
end
