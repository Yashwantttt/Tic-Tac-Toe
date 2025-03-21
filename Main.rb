require_relative "moves.rb"
require_relative "display.rb"
require_relative "winner.rb"

puts "Tic Tac Toe"
puts "| 1 || 2 || 3 |"
puts "| 4 || 5 || 6 |"
puts "| 7 || 8 || 9 |"
puts "Instruction:"
puts "This is a human vs human Tic-Tac-Toe in which you have to enter the number allocated to place your move"
puts "For example, if you type 1 then your mark (X or O) will appear there."
puts "This continues until someone gets the victory or draw by playing 3 marks consecutively."
puts "Player 1 will be 'X' & Player 2 will be 'O'"
puts "_________________________________________________________________________________________________________"

# Use 0-based indexing
elements = [0] * 9  

chance = 1
cp1 = true
winner = false  # Ensure `winner` is initialized

while chance < 10
  if cp1
    puts "Player 1 move:"
    move = gets.chomp.to_i
    placement1(move, elements)
  else
    puts "Player 2 move:"
    move = gets.chomp.to_i
    placement2(move, elements)
  end

  board(elements)  # Show updated board

  if chance >= 5
    winner = victory(elements)  # Check for a winner
  end

  break if winner  # Exit loop if there's a winner

  cp1 = !cp1  # Switch players
  chance += 1
end

puts "Game Over!" unless winner
