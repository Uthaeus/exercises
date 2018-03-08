# Make a program that reverses input and capitalizes every other letter.

def rev_input str 
  str.split(' ').reverse.join(' ')
end 

p "What do you have to say?"
ans1 = gets.chomp 

p = "#{rev_input(ans1)}"
sleep 2

ans2 = rev_input(ans1)

def cap_word obj
  obj.scan(/..?/).map(&:capitalize) * ''
end

p "#{cap_word(ans2)}"


# def rev_cap str
#   count = 0

#   str = str.downcase.reverse.chars.map do |x|
#     count += 1
#     count.even? ? x.upcase : x 
#   end

#   str.join("")
# end

# word = gets.chomp!
# p rev_cap(word)

