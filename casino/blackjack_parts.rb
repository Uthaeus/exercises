def dealInitialCards (deck, hand)
  hand << deck.delete_at(rand(deck.length))
  hand << deck.delete_at(rand(deck.length))
end

def dealerTotalHand(hand, total)
  if hand.inject { |accumulator, numbers| accumulator + numbers } > 21
    total = hand.inject { |accumulator, numbers| accumulator + numbers }
    puts "Yay! the dealer busts!"
  elsif hand.include?(1)
    if hand.inject { |accumulator, numbers| accumulator + numbers } + 10 < 22
      total = (hand.inject { |accumulator, numbers| accumulator + numbers } + 10)
    else
      total = hand.inject { |accumulator, numbers| accumulator + numbers }
    end
  else
    total = hand.inject { |accumulator, numbers| accumulator + numbers }
  end
  total 
end

def declareWinner(dlr, usr, winner)
  case
    when dlr == usr 
      puts "Push!"
      @winner = "Tie"
    when dlr < 22 && usr > 21
      puts "Dealer Wins!"
      @winner = "Dealer"
    when usr < 22 && dlr > 21
      puts "You Win!"
      @winner = "User"
    when dlr > usr
      puts "Dealer Wins!"
      @winner = "Dealer"
    when usr > dlr
      puts "You Win!"
      @winner = "User"
  end
  @winner
end

def totalHand(hand, total)
  if hand.inject { |accumulator, numbers| accumulator + numbers } > 21
    total = hand.inject { |accumulator, numbers| accumulator + numbers }
    puts "Sorry, you bust!"
  elsif hand.include?(1)
    if hand.inject { |accumulator, numbers| accumulator + numbers } + 10 < 22
      total = (hand.inject { |accumulator, numbers| accumulator + numbers } + 10)
      puts "Because you have an ace in your hand, your total is #{total} or #{total - 10}"
    else
      total = hand.inject { |accumulator, numbers| accumulator + numbers }
      puts "Your total is #{total}"
    end
  else
    total = hand.inject { |accumulator, numbers| accumulator + numbers }
    puts "Your total is #{total}"
  end
  total
end

def userHit(hit, hand, deck)
  if hit == "y"
    hand << deck.delete_at(rand(deck.length))
  end
  hand
end

def dealerHit(total, hand, deck, usrTotal)
  if total < 16 && usrTotal < 22
    hand << deck.delete_at(rand(deck.length))
  end
  hand
end
