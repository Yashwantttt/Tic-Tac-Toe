require_relative "moves.rb"
require_relative "display.rb"

puts "Tic Tac Toe"
puts "| 1 || 2 || 3 |"
puts "| 4 || 5 || 6 |"
puts "| 7 || 8 || 9 |"
puts "Instruction:"
puts "This is a human vs human Tic-Tac-Toe in which you have to enter the number allocated to place your move"
puts "For example, if you type 1 then your mark (x or o) will appear there."
puts "This continues until someone gets the victory or draw by playing 3 marks consecutively."
puts "Player 1 will be 'x' & Player 2 will be 'o'"
puts "_________________________________________________________________________________________________________"

# Store board state in an array
elements = [0, 0, 0, 0, 0, 0, 0, 0, 0]  # 9 zeros representing empty spaces

chance = 1
cp1 = true

while chance < 10
  if cp1
    puts "Player 1 move :"
    move = gets.chomp.to_i
    placement1(move, elements)
  else
    puts "Player 2 move :"
    move = gets.chomp.to_i
    placement2(move, elements)
  end

  board(elements)
  
  cp1 = !cp1 # Switch players
  chance += 1
end
