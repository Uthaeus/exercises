#Create and array of random numbers

def random_number_array
  Array.new(20) { (rand 500) - 200 }
end

# sort array

# comparison sort is often known as bubble sort

def comparison_sort
  a = random_number_array
  n = a.length

  loop do 
    swapped = false
    (n - 1). times do |i|
      if a[i] > a[i + 1]
        a[i], a[i + 1] = a[i + 1], a[i]
        swapped = true
      end
    end
    break if not swapped
  end
  a
end

#p comparison_sort


def self_sort
  a = random_number_array
  new_arr = []
  smallest = 300
  largest = -200
  a.each_with_object([]) do |i|
    if i < smallest
      smallest = i
      
    end
    smallest = a[0]
    a.shift >> new_arr
  end
  new_arr
end

p self_sort


def bubble_sort arr 
  n = arr.length

  loop do
    swapped = false
    (n - 1).times do |i|
      if arr[i] < arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  arr 
end






