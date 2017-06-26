# Using the each method, write some code to output all of the vowels from the
# strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = "aeiou"
hsh.each do |key, array|
  array.each do |word|
    word.each_char do |letter|
      puts letter if vowels.include?(letter)
    end
  end
end
