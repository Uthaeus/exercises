
# Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.


def diff_of_squares arr
  arr1 = arr
  sum1 = arr1.reduce(:+) ** 2
  arr2 = []
  arr1.each do |i|
    arr2 << i ** 2 
  end 
  sum2 = arr2.reduce(:+)
  final = sum1 - sum2

  p final 
end


nums = (1..10).to_a
diff_of_squares(nums)