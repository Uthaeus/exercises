# G -> C
# C -> G
# T -> A
# A -> U

def trans str
  new_arr = []
  arr = str.split('')
  arr.each do |i|
    case i 
    when 'G'
      puts "G -> C"
    when 'C'
      puts "C -> G"
    when 'T'
      puts "T -> A"
    when 'A'
      puts "A -> U"
    end
  end
  puts "**************************"
  puts str 
  arr.each do |x|
    case x 
    when 'G'
      new_arr.push('C')
    when 'C'
      new_arr.push('G')
    when 'T'
      new_arr.push('A')
    when 'A'
      new_arr.push('U')
    end
  end
  puts new_arr.join('')
end

trans("GAGCCTACTAACGGGAT")