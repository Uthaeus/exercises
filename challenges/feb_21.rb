# Write a method that returns the elements on odd positions in an array. Then do even, then do a given number.

class Array

  def odd_positions
    arr = []
    self.each_with_index do |item, ind|
      if ind.odd?
        arr << item
      end
    end
    arr 
  end

  def even_positions
    arr = []
    self.each_with_index do |item, ind|
      if ind.even?
        arr << item
      end
    end
    arr 
  end

  def item num 
    self.at(num)
  end

end


instance = 'y'
while instance == 'y'

  my_arr = (1..1000).to_a.sample(20)

  puts "What would you like to find?"
  puts "1 => Odd Positions"
  puts "2 => Even Positions"
  puts "3 => Choose your own position"

  resp = gets.chomp

  if resp == '1'
    p my_arr.odd_positions
  elsif resp == '2'
    p my_arr.even_positions
  elsif resp == '3'
    puts "Enter your position"
    resp2 = gets.to_i
    p my_arr.item(resp2)
  end

  puts "Would you like to try another? (y/n)"

  instance = gets.chomp

  if instance != 'y'
    puts "Have a nice day"
  end
end



