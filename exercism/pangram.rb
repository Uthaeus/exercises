# Pangram
# Determine if a sentence is a pangram. A pangram (Greek: παν γράμμα, pan gramma, "every letter") is a sentence using every letter of the alphabet at least once. The best known English pangram is:


def pangram str
  test = str.downcase.gsub(/[^a-z]/, "").split('')
  arr = []
  test.each do |i|
    arr << i unless arr.include?(i)
  end
  if arr.length == 26
    puts "It's got every letter!"
  else
    puts "Nope, sorry."
  end
end

test1 = "The quick brown fox jumps over the lazy dog."
test2 = "I suspect this sentence will fail."
test3 = "This 1 has ''' some weird 343 !? stuff in it"
test4 = "@The !23    quick brown &*4 fox () jumps over the + $$ @ lazy dog!&^&^&"

pangram(test4)