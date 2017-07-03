board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def prompt(str)
  puts "==> #{str}"
end

def display_game_start
  puts "Let's play Tic Tac Toe!"
end

def display_board(board)
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

def prompt_player_move
  prompt("Enter a number 1-9 to place your X")
end

def player_position
  gets.chomp.to_i
end

def player_move(board)
  board[player_position] = "X"
end

def prompt_computer_move
  prompt("Now it's the computers turn")
end

def computer_move(board)
  board[rand(1..9)] = "O"
end


display_game_start

loop do
  display_board(board)

  prompt_player_move
  player_move(board)

  prompt_computer_move

  computer_move(board)


  display_board(board)
  break
end
