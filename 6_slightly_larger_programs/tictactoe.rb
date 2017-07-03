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

def board
  [" ", " ", " ", " ", " ", " ", " ", " ", " "]
end
  display_board
