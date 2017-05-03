# In the previous exercise we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)

# Yes it is possiblie to add multiple items to the array
# First using #concat
flintstones.concat(%w(Dino Hoppy))
p flintstones

# Reseting array
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Second using push
flintstones.push('Dino', 'Hoppy')
p flintstones
