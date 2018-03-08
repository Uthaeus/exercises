# Write a program that asks the user for a number n and gives him the possibility to choose between computing the sum and computing the product of 1,..,n. Print out the result of each.


def sum num 
  arr = (1..num).to_a.inject(:+)
  puts arr
end

def product num  
  arr = (1..num).to_a.inject(:*)
  puts arr 
end

calc = 'y'
while calc == 'y'

  puts "Welcome, this program can provide you either with the sum or the product of a range up to the number you enter."
  sleep 1
  puts "Enter a number"
  ans1 = gets.to_i

  while ans1 < 1 || ans1 == nil 
    puts "Sorry, please try again"
    ans1 = gets.to_i
  end

  puts "And would you like the sum or the product?"
  sleep 1
  puts "1 => Sum"
  puts "2 => Product"
  ans2 = gets.to_i
  sleep 1
  # while ans2 != 1 || ans2 != 2
  #   puts "Sorry, I only understand 1 or 2"
  #   ans2 = gets.to_i
  # end

  if ans2 == 1
    sum(ans1)
  elsif ans2 == 2
    product(ans1)
  end

  puts "Would you like to try another number? (y/n)"
  calc = gets.chomp
  if calc != 'y'
    puts "Thank you and goodbye"
  end
end
