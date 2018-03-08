# Write a method that rotates an array by k elements. For example [1,2,3,4,5,6]
# rotated by two becomes [3,4,5,6,1,2].

class Array

  def rotate_forward num
    num.times do 
      a = self.shift
      self.push(a)
    end
    self
  end

  def rotate_reverse num
    num.times do 
      a = self.pop
      self.unshift(a)
    end
    self
  end

end

instance = 'y'
while instance == 'y'

  puts "Go ahead and enter some numbers."
  puts "==========================================="

  ans = gets.chomp
  arr = ans.split.map { |i| i.to_i }

  sleep 1
  puts ""
  puts ""
  # p arr 
  puts "Would you like to rotate forward or backward? (f/b)"
  dir = gets.chomp
  puts ""
  puts "==========================================="

  puts "How many spots would you like to rotate?"
  puts "==========================================="

  spots = gets.to_i
  puts "==========================================="

  if dir == 'f'
    p arr.rotate_forward(spots)
  elsif dir == 'b'
    p arr.rotate_reverse(spots)
  end

  puts ""
  puts ""
  puts "--------------------------------------------"
  puts "Would you like to enter another array? (y/n)"
  instance = gets.chomp

  if instance != 'y'
    puts "Have a nice day!"
  end
end
