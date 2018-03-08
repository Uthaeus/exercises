# Binary guessing game where cpu guesses your number from 1-25

# - it guesses
# - You tell it higher or lower
# - it adjusts its guess based on your input and creates a new, smarter guess 
# The computer should not guess the same number twice, and it should be able to narrow its selection based on your input so that it won't go higher if you say to go lower, etc

# Repeat until the computer guesses your number

# Bonus: Record number of guesses
#         Ask player if they want to play again

#         Remember seperation of concerns, and dividing things into separate methods as much as it makes sense
@num = (1..25).to_a.sample
@guess_count = 0

def guess1 
  
  if @num == @ans
    feedback = "That's the one!"
  elsif @num > @ans
    feedback = "That's too high."
  elsif @num < @ans 
    feedback = "That's too low."
  elsif @ans > 25 || @ans < 1 || @ans == nil || @ans.type != Number  
    p "I don't recognize that."
    game1 == 0
  end
  p feedback
end

def refine 
  if feedback == "That's the one!"
    game1 == 0
  elsif feedback == "That's too high."
    (1...@num).to_a.sample
  elsif feedback == "That's too low."
    ((@num + 1)..25).to_a.sample
  end
end

game = 1

while game == 1

  p "**********************************"
  p "** Welcome to the guessing game **"
  p "**********************************"

  sleep 1

  game1 = 1

  while game1 == 1

    p "Enter any number between 1 and 25"

    @ans = gets.chomp!.to_i
    sleep 1
    p "thinking...."
    sleep 1

    guess1

  end

end









