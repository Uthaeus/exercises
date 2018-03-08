# Clean up user-entered phone numbers so that they can be sent SMS messages.

# Your task is to clean up differently formatted telephone numbers by removing punctuation and the country code (1) if present.

# For example, the inputs

# +1 (613)-995-0253
# 613-995-0253
# 1 613 995 0253
# 613.995.0253
# should all produce the output

# 6139950253

# Note: As this exercise only deals with telephone numbers used in NANP-countries, only 1 is considered a valid country code.

# I want to take in initial entry as a string, then remove everything from it except the digits (regex). 
# Check to see if ann international country code (1) was included.
# Then return a line of integers, checking the count (should be ten).
test = '1-555-555-55555'

def phone_number str
  str1 = str.gsub(/[^0-9]/, '')
  str2 = str1.split('')
  if str2[0] == '1'
    str2.delete_at(0)
  end
  if str2.count != 10
    puts "invalid number"
  end
  num = str2.join('').to_i
  
  puts num 
end

# phone_number(test)

instance = '1'
while instance == '1'

  puts "Please enter a phone number."

  number = gets.chomp
  sleep 1

  phone_number(number)

  puts "Press 1 to enter another number, anything else to exit."

  instance = gets.chomp

  if instance != '1'
    puts "Adios"
  end
end
