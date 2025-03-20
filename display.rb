def board (elements)
  j = 0
  while j < 9 do
      if (elements[j] == 0)
        print "|   |"
      elsif (elements[j] == 1)
        print "| x |"
      elsif (elements[j] == 2)
        print "| o |"
      end
      
      # this is to go to next line after three elements
      if ((j+1)%3 == 0) 
        puts""
      end
      j +=1
    end
end