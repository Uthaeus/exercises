

def sieve num
  arr = (2..num).to_a
  x = 0
  arr.each do |i|
    if i % arr[x] == 0
      i.delete
    end
    x += 1
  end 
  arr
end

sieve(200)