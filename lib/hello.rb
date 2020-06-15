def hello_t(arr)
  if block_given?
    i = 0 
    
    while i < arr.length 
      yield (arr[i])
      i = i + 1 
    end
  
   return arr
  else 
    puts "Hey! No block was given!"
  end
end

# call your method here!

