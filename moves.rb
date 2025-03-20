def placement1(move, elements)
  if move.between?(1, 9) && elements[move - 1] == 0
    elements[move - 1] = 1
  else
    puts "Invalid move! That spot is taken or out of range."
  end
end

def placement2(move, elements)
  if move.between?(1, 9) && elements[move - 1] == 0
    elements[move - 1] = 2
  else
    puts "Invalid move! That spot is taken or out of range."
  end
end
