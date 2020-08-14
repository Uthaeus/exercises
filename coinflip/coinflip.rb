class Player
  def initialize(wins, total_games)
    @wins = wins
    @total_games = total_games 
  end

  def wins
    @wins
  end

  def total_games
    @total_games
  end


  def game_update play_result
    @wins += play_result
    @total_games += 1

    if play_result == 1
      puts "You Win!"
    else
      puts "You Lost"
    end
  end 

  def display_current_standings 
    w = @wins
    t = @total_games
    pct = (w * 100) / (t * 100)
    puts
    puts "*********************************"
    puts "Current Standing"
    puts "*********************************"
    puts
    puts "Total number of flips: #{@total_games}"
    puts 
    puts "Number correct: #{@wins}" 
    puts
    puts "Winning pct: #{pct}%"
  end
end

def flip c 
  possibilities = ['h', 't']

  result = possibilities.sample
  if result == c 
    1
  else
    0
  end
end




puts "______________________________________"
puts
puts "-------------Coin Flip----------------"
puts
puts "______________________________________"

sleep 1
puts
puts "Welcome to the game where a coin is flipped."
puts
sleep 0.5
5.times do 
  print "   ***   "
  sleep 0.25
end

p1 = Player.new(0, 0)

instance = 'y'
while instance == 'y'
  system('clear')

  

  puts "Which do you choose? (h/t)"
  choice = gets.chomp.downcase

  sleep 0.5
  flipped = flip(choice)
  p1.game_update(flipped)

  puts
  p1.display_current_standings
  puts
  puts "Play Again? (y/n)"

  instance = gets.chomp.downcase

  if instance != 'y'
    puts 
    puts "Thanks for playing"
  end
end










