

def gold
  board = (1..64).to_a
  x = 1
  board1 = []
  board1[0] = 1 
  while x < board.length do 
    board1 << (board1[x - 1]) * 2 
    x += 1
  end 
  sum = board1.reduce(:+)

  board1.each do |e|
    p e 
  end 
  p sum 
end


gold