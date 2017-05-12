# What do you expect to happen when the greeting variable is referenced
# in the last line of the code below?

if false
  greeting = “hello world”
end

# greeting is nil. Because it was initialized in the if block it is not
# available outside of that block.
greeting