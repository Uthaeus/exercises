# Write a task that translates a text to Pig Latin and back

# For words that begin with consonant sounds, all letters before the initial vowel are placed at the end of the word sequence. The, 'ay' is added, as in the following examples: 

# "The quick brown fox" becomes "Ethay uickqay rownbay oxfay"

# Bonus:

# => Allow for when a vowel is the first letter (like is, or, of) then the letters are kept the same, and 'ay' is added to the end of said letters

digraphs = ['bl', 'br', 'ch', 'ck', 'cl', 'cr', 'dr', 'fl', 'fr', 'gh', 'gl', 'gr', 'ng', 'ph', 'pl', 'pr', 'qu', 'sc', 'sh', 'sk', 'sl', 'sm', 'sn', 'sp', 'st', 'sw', 'th', 'tr', 'tw', 'wh', 'wr']

def piggy str
  
  arr = []
  
  new_str = str.downcase.split(' ')
  # vowel_check = new_str.
  new_str.map do |w|
    first = w.slice!(0, 1)
    arr << w + first + 'ay' 
  end 
  p arr.join(' ').capitalize
end

piggy('The quick brown fox')