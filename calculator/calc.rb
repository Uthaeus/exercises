# This method greets the user on start up and request their name
# It returns their name

def greeting

  puts "Hello!  Please type your name: "
  name = gets
  puts "\n" + "It is nice to meet you #{name}"  
  puts "\n" + "I am a simple calculator application.  I can add, subtract, multiply, and divide."

  return name

end

# This method ask the user what type of calculation they would like to perform
# It returns the operation or an error for erroneous entry
def request_calculation_type

  puts "\n" + "Type 1 to add, 2 to subtract, 3 to multiply, or 4 to divide two numbers: "
  operation_selection = gets.to_i

  if operation_selection == 1 
    return "add"
  elsif operation_selection == 2
    return "subtract"
  elsif operation_selection == 3
    return "multiply"
  elsif operation_selection == 4
    return "divide"
  else 
    return "error"

  end

end

# This method performs the requested calculation
# It returns the result of the calculation
def calculate_answer(operator, a, b)

  if operator == "add"
    return  a + b
  elsif operator == "subtract"
    return  a - b
  elsif operator == "multiply"
    return a * b
  elsif operator == "divide"
    return a / b
  end

end

name = greeting
run_calculator = 1

while run_calculator == 1

  current_calculation = request_calculation_type()

  if current_calculation == "error"

    puts "\n" + "I do not understand this type of calculation... Can we try again?"  

  else
    puts "\n" + "What is the first number you would you like to #{current_calculation}: "
    first_number = gets.to_i
    puts "\n" + "What is the second number you would like to #{current_calculation}: "
    second_number = gets.to_i

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "\n" + "The answer is #{answer}"
    puts "\n" + "Type 1 to run another calculation or anything else to end: "
    run_calculator = gets.to_i

    if run_calculator != 1

      puts "\n" + "Thanks for working with me to crunch some numbers!  See you later ;-)"

    end
  end
end



