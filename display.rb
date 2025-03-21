def board(elements)
  (0..8).each do |j|
    if elements[j] == 0
      print "| #{j + 1} |"  # Show numbers for empty spaces
    elsif elements[j] == 1
      print "| X |"
    elsif elements[j] == 2
      print "| O |"
    end

    # Go to the next line after every 3 elements
    puts "" if (j + 1) % 3 == 0
  end
end
