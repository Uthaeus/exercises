def queue_time(customers, n)
  arr = Array.new(n, 0)
  customers.each { |customer| p arr[ arr.index(arr.min)] += customer }
  arr.max
 end