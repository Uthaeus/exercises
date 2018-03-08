def rps(p1, p2)
  #your code here
  if (p1 == p2) 
    p "Draw!"
  elsif (p1 == 'scissors' && p2 == 'paper')
    p "Player 1 won!"
  elsif (p1 == 'scissors' && p2 == 'rock')
    p "Player 2 won!"
  elsif (p1 == 'paper' && p2 == 'scissors')
    p "Player 2 won!"
  elsif (p1 == 'paper' && p2 == 'rock')
    p "Player 1 won!"
  elsif (p1 == 'rock' && p2 == 'scissors')
    p "Player 1 won!"
  elsif (p1 == 'rock' && p2 == 'paper')
    p "Player 2 won!"
  elsif (p1 == 'scissors' && p2 == 'lizard')
    p "Player 1 won!"
  elsif (p1 == 'scissors' && p2 == 'spock')
    p "Player 2 won!"
  elsif (p1 == 'paper' && p2 == 'lizard')
    p "Player 2 won!"
  elsif (p1 == 'paper' && p2 == 'spock')
    p "Player 1 won!"
  elsif (p1 == 'rock' && p2 == 'lizard')
    p "Player 1 won!"
  elsif (p1 == 'rock' && p2 == 'spock')
    p "Player 2 won!"
  elsif (p1 == 'spock' && p2 == 'scissors')
    p "Player 1 won!"
  elsif (p1 == 'spock' && p2 == 'paper')
    p ""
  end
end