# Given the hash below
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

#Turn this into an array containing only two elements: Barney's name and
# Barney's number

# my original answer
=begin
barney_array = []

flintstones.each do |k, v|
  if k == "Barney"
    barney_array << k
    barney_array << v
  end
end
=end

# answer after looking through the Ruby docs
barney_array = flintstones.assoc("Barney")
p barney_array
