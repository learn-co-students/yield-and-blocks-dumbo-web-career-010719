# def hello_t(array)
#     i=0
#
#     while i < array.length
#         # yield array[i]  #return new array
#         yield(array[i])   #return og  array
#         i += 1
#     end
#     array                 #calls og array
# end

# REFACTOR
def hello_t(array)
    if block_given?
        i = 0

        while i < array.length
            yield(array[i])
            i = i + 1
        end
        array
    else
        puts "Hey! No block was given!"
    end
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

# Above, you're calling our method with the array of names as an argument and
# accompanying that method call with a block that accepts a |name| parameter.
#
# If the passed-in name begins with the letter "T", the block will puts out a greeting.

# Your methods will break if they are called without an accompanying block.

# This is bad because your code needs to be flexible and accommodating.

# You don't want our code to break so easily, in such an uncontrolled manner.
