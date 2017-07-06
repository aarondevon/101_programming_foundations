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

def computer_move(board, position)
  board[position] = "O"
end

def valid_move?(board, position)
  board[position] == " " && (position >= 0 && position <= 8)
end

def board_full?(board)
  !(board.include?(" "))
end

def player_win?(board)
  if board[0] == 'X' && board[1] == 'X' && board[2] == 'X'
    true
  elsif board[3] == 'X' && board[4] == 'X' && board[5] == 'X'
    true
  elsif board[7] == 'X' && board[7] == 'X' && board[8] == 'X'
    true
  elsif board[0] == 'X' && board[3] == 'X' && board[6] == 'X'
    true
  elsif board[1] == 'X' && board[4] == 'X' && board[7] == 'X'
    true
  elsif board[2] == 'X' && board[5] == 'X' && board[8] == 'X'
    true
  elsif board[0] == 'X' && board[4] == 'X' && board[8] == 'X'
    true
  elsif board[6] == 'X' && board[4] == 'X' && board[2] == 'X'
    true
  else
    false
  end
end

def computer_win?(board)
  if board[0] == 'O' && board[1] == 'O' && board[2] == 'O'
    true
  elsif board[3] == 'O' && board[4] == 'O' && board[5] == 'O'
    true
  elsif board[7] == 'O' && board[7] == 'O' && board[8] == 'O'
    true
  elsif board[0] == 'O' && board[3] == 'O' && board[6] == 'O'
    true
  elsif board[1] == 'O' && board[4] == 'O' && board[7] == 'O'
    true
  elsif board[2] == 'O' && board[5] == 'O' && board[8] == 'O'
    true
  elsif board[0] == 'O' && board[4] == 'O' && board[8] == 'O'
    true
  elsif board[6] == 'O' && board[4] == 'O' && board[2] == 'O'
    true
  else
    false
  end
end

display_game_start

loop do
  loop do
    display_board(board)
    prompt_player_move
    loop do
      position = player_position - 1
      if valid_move?(board, position)
        player_move(board, position)
        break
      end
      prompt("Enter a valid position")
    end

    break if board_full?(board) || player_win?(board)

    prompt_computer_move
    loop do
      computer_position = rand(0..8)
      if valid_move?(board, computer_position)
        computer_move(board, computer_position)
        break
      end
    end

    break if computer_win?(board)
  end
  puts "going to display the board one more time!"
  display_board(board)
  break
end
