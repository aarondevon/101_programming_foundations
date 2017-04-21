valid_choices = {
   "r" => "rock",
   "p" => "paper",
   "sc" => "scissors",
   "l" => "lizard",
   "sp" => "spock",
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

WIN_CONDITIONS = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  lizard: ['spock', 'paper'],
  spock: ['scissors', 'rock']

}

def display_results(player, computer)
  if WIN_CONDITIONS[player.to_sym].include?(computer)
    prompt("You won the round!")
  elsif WIN_CONDITIONS[computer.to_sym].include?(player)
    prompt("Computer won the round!")
  else
    prompt("It's a tie!")
  end
end

def won_round?(player, computer)
  WIN_CONDITIONS[player.to_sym].include?(computer)
end

def final_score(player, computer)
  "Final score Player: #{player} Computer: #{computer}"
end

prompt("Welcome to Rock Paper Scissors Lizard Spock")
prompt("First to 5 wins the game")

choice_prompt = <<-MSG
Choose one:
   r = rock
   p = paper
   sc = scissors
   l = lizard
   sp = spock
MSG

player_score = 0
computer_score = 0

loop do
  prompt("Player: #{player_score} Computer: #{computer_score}")

  choice = ''
  loop do
    prompt(choice_prompt)
    choice = Kernel.gets().chomp().downcase()

    if valid_choices.keys().include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  choice = valid_choices[choice]

  computer_choice = valid_choices.values().sample()

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if won_round?(choice, computer_choice)
    player_score += 1
  elsif won_round?(computer_choice, choice)
    computer_score += 1
  end

  if player_score == 5
    prompt('You won the game!')
    prompt(final_score(player_score, computer_score))
    break
  elsif computer_score == 5
    prompt('The computer won the game. Better luck next time.')
    prompt(final_score(player_score, computer_score))
    break
  end
end
