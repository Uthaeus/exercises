
def raindrops arr
  arr.each do |i|
    if i % 3 == 0 && i % 5 == 0 && i % 7 == 0
      puts "Pling, Plang, Plong"
    elsif i % 3 == 0 && i % 5 == 0
      puts "Pling, Plang"
    elsif i % 3 == 0 && i % 7 == 0
      puts "Pling, Plong"
    elsif i % 5 == 0 && i % 7 == 0
      puts "Plang, Plong"
    elsif i % 3 == 0
      puts "Pling"
    elsif i % 5 == 0
      puts "Plang"
    elsif i % 7 == 0
      puts "Plong"
    else
      puts i 
    end
  end
end

nums = (1..200).to_a

raindrops(nums)