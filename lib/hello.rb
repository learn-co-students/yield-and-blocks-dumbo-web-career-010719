def hello_t(namesArr)
  if (block_given?)
    i = 0
    while i < namesArr.length
      yield(namesArr[i])
      i += 1
    end
    namesArr
  else
    puts "Hey! No block was given!"
  end
end

# call your method here!
