# Given this data structure write some code to return an array containing the
# colors of the fruits and the sizes of the vegetables. The sizes should be
# uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, hsh|
  if hsh[:type] == 'fruit'
    hsh[:colors].map do |color|
      color.capitalize
    end
  elsif hsh[:type] == 'vegetable'
    hsh[:size].upcase
  end
end
