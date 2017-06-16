# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

arr.sort {|x,y| y.to_i <=> x.to_i}
