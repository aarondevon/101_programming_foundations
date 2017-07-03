def prompt(str)
  puts "==> #{str}"
end

def display_game_start
  puts "Let's play Tic Tac Toe!"
end

def display_board
  puts ""
  puts "     |     |     "
  puts "  #{board[0]}  |  #{board[1]}  |  #{board[2]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{board[3]}  |  #{board[4]}  |  #{board[5]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{board[6]}  |  #{board[7]}  |  #{board[7]}  "
  puts "     |     |     "
  puts ""
end

def board()
  [" ", " ", " ", " ", " ", " ", " ", " ", " "]
end

def prompt_player_move
  prompt("Please make your move")
end


display_game_start

loop do
  display_board
end
