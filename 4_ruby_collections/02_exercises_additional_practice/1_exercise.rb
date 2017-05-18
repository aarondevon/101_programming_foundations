# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
#Turn this array into a hash where the names are the keys and the values are
# the positions in the array.
flintstones_hash = {}

flintstones.each_with_index do |value, index|
  flintstones_hash[value] = index
end
