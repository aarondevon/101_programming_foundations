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
  puts "  #{board[6]}  |  #{board[7]}  |  #{board[8]}  "
  puts "     |     |     "
  puts ""
end

def prompt_player_move
  prompt("Enter a number 1-9 to place your X")
end

def player_position
  gets.chomp.to_i
end

def player_move(board, position)
  board[position] = "X"
end

def prompt_computer_move
  prompt("Now it's the computers turn")
end

def computer_move(board)
  board[rand(0..8)] = "O"
end

def valid_move?(board, position)
  board[position] == " " && (position > 0 && position < 10)
end


display_game_start

loop do
  display_board(board)

  prompt_player_move
  loop do
    position = player_position - 1
    p board[position] == " " && (position > 0 && position < 10)
    if valid_move?(board, position)
      player_move(board, position)
      break
    end
    prompt("Enter a valid position")
  end

  prompt_computer_move

  computer_move(board)


  display_board(board)
  break
end
