require_relative "casino_parts.rb"
require_relative "blackjack_parts.rb"

@wallet = 100

def enough_money less_money
  if (@wallet + less_money) < 0
    p "Sorry! You're out of money"   
  end  
end

def wallet_update money 
  @wallet += money
  p "Your wallet has $#{@wallet}"
end

def test_game win
  money_won = 10
  money_lost = -30
  if (@wallet + money_lost) < 0
    p "You're out of money"
  else
    if win == true
      wallet_update(money_won)
    else
      wallet_update(money_lost)
    end
  end  
end

def red_black_blue 

  system('clear')
  game = 'y'

  while game == 'y'
    colors = ['red', 'black', 'blue'].sample

    puts "Red, Black, Blue?"
    guess = gets.chomp!.downcase
    sleep 1
    p "It's #{colors}!"
    if guess == colors
      p "You win!"
      wallet_update(10)
    else
      wallet_update(-10)
      p "Sorry"
    end
    p "Would you like to play again? (y/n)"
    game = gets.chomp!
    if game != 'y'
      p 'Thanks for playing'
    end
  end
end

# test_game false

def slots

  system('clear')
  money_won = 10
  money_lost = -30
  jackpot = 75

  slot_intro

  game = 'y'
  while game == 'y' 
   if (@wallet + money_lost) < 0
    p "You don't have enough money to play slots"
    return
   else
    
    arr = ["bar", "bird", "card", "cake", "horse", "pineapple"]
    arr1 = arr.sample
    arr2 = arr.sample
    arr3 = arr.sample

    puts "**********************************************"
    puts " "
    puts "Press enter to pull the lever."
    lever = gets.chomp
    sleep 1
    puts " "
    puts "..bling bling...bling"
    sleep 1
    puts " "
    puts "bling...bling"
    sleep 1

    p "The slots are #{arr1}, #{arr2}, #{arr3}"
    if (arr1 == arr2) && (arr1 == arr3)
      wallet_update(jackpot)
      roulette_jackpot
    elsif (arr1 == arr2) || (arr1 == arr3) || (arr2 == arr3)
      wallet_update(money_won)
      puts "You're a winner!!!"
    else
      wallet_update(money_lost)
      p "loser!"
    end
      if (@wallet + money_lost) >= 0
        puts "You currently have ............$#{@wallet}"
        p "Would you like to play again? (y/n)"
        game = gets.chomp!
      end
      if game != 'y'
          p 'Thanks for playing'
      end
    end
  end
end

def pachinko

  system('clear')
  pots = ['Jackpot', 'Big Win', 'Win', 'small Win', 'Lose', 'Lose', 'Lose', 'Lose', 'Lose', 'Lose', 'Lose', 'Lose']
  ball = -10
  win = 0

  game = 'y'

  while game == 'y'
    
    p "*******************************************"
    p "   ***     Welcome to Pachinko    ***"
    p "*******************************************"
    sleep 1
    p "Your current balance........... $#{@wallet}"
    sleep 1
    p "*******************************************"
    p "   How many balls would you like to buy?"
    p "         --->  $10 each  <----"

    ball_buy = gets.to_i
    cost = ball_buy * ball 
    if (@wallet + cost) < 0
      p "You do not have the means."
      sleep 1
      p "Available funds are currently $#{@wallet}"
      p "*****************************************"
      sleep 1

    else

      wallet_update(cost)
      sleep 1
      p "*******************************************"
      p "**                                       **"
      p "**         Let's Play Pachinko!!         **"
      p "**                                       **"
      p "*******************************************"
      sleep 1
      #animation would go here
      
      ball_buy.times do 
        p "plink....plink.....plink...plink..."
        sleep 1
        play1 = pots.sample
        case play1
        when 'Jackpot' then win = 100 
          p "Winner!!! Winner!!! Winner!!!" 
        when 'Big Win' then win = 50 
          p "Great Play! You got a BIG WIN!"
        when 'Win' then win = 25 
          p "You Won! Good for you."
        when 'small Win' then win = 10 
          p "Yay."
        when 'Lose' then win = 0 
          p "Oh no...You lost."
        end
        
        sleep 1
        if win > 0
          p "You won $#{win}! Congrats"
          wallet_update(win)
        else
          p "Sorry, you did not win anything"
        end
        sleep 1
      end
    end

    p "Would you like to try your luck again? (y/n)"
    game = gets.chomp!
    sleep 1
    p "*********************************************"

    if game != 'y'
      p "Thanks for playing!"
    
    end
  end
end

def roulette

  system('clear')
  
  wheel = (0..36).to_a
  red = [1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36]
  black = [2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33, 35]
  high = (19..36).to_a
  low = (1..18).to_a

  roulette_title

  play = 'y'
  while play == 'y'

    roulette_menu

    bet1 = gets.to_i

    if bet1 == 1

      individual_play = 'y'
      while individual_play == 'y'

        puts "What's your number?"
        single_bet = gets.to_i
        while single_bet < 1 || single_bet > 36 
          puts "Please re-enter your pick."
          single_bet = gets.to_i
        end
        sleep 1
        puts "You can bet as much as you would like."
        sleep 1
        puts "How many credits do you want to place on your number?"
        single_bet_amount = gets.to_i

        #update wallet amount here
        wallet_update(-single_bet_amount)

        puts "------------------------------------------------"
        puts "You placed $#{single_bet_amount} on number #{single_bet}"
        spin = wheel.sample
        sleep 1
        puts "...spin....spin....spin...spin..."
        sleep 1
        puts "...spin....spin..."
        sleep 1
        puts "Ball lands on #{spin}."
        sleep 1
        if single_bet == spin
          winnings = single_bet_amount * 35
          roulette_jackpot
          puts "You won $#{winnings}!!!"
          #add winnings to wallet here
          wallet_update(winnings)
        else
          puts "Aww, too bad."
        end

        sleep 2
        system('clear')
        puts "Current Balance:........$#{@wallet}"
        puts "Bet another number? (y/n)"
        individual_play = gets.chomp

        if individual_play != 'y'
          puts "Thanks for playing!"
        end
      end

    elsif bet1 == 2

      redorblack_play = 'y'
      while redorblack_play == 'y'

        puts "Red or Black?"
        rorb = gets.chomp.downcase
        sleep 1
        puts "How much would you like to bet?"
        rorb_bet = gets.to_i
        sleep 1
        puts "So you've placed $#{rorb_bet} on #{rorb}"
        sleep 1
        puts "...spin....spin....spin...spin..."
        sleep 1
        puts "...spin....spin..."
        sleep 1
        spin = wheel.sample
        puts "Ball lands on #{spin}."
        sleep 1

        if rorb == 'red' && red.include?(spin)
          puts "You Win!"
          #add winning to wallet here
          wallet_update(rorb_bet)
          sleep 1
        elsif rorb == 'black' && black.include?(spin)
          puts "You Win!"
          #add winning to wallet here
          wallet_update(rorb_bet)
          sleep 1
        else
          puts "Nice try, But you picked incorrectly."
          #remove bet amount from wallet here
          wallet_update(-rorb_bet)
        end

        sleep 2
        system('clear')
        puts "Current Balance:........$#{@wallet}"
        puts "Play Red or Black again? (y/n)"
        redorblack_play = gets.chomp

        if redorblack_play != 'y'
          puts "Thanks for playing!"
        end
      end

    elsif bet1 == 3

      highorlow_play = 'y'
      while highorlow_play == 'y'

        puts "How would you like to bet?"
        sleep 1
        puts "High or Low"
        horl = gets.chomp.downcase
        puts "And how much would you like to place?"
        horl_bet = gets.to_i
        puts "So you placed $#{horl_bet} on #{horl}."
        sleep 1
        puts "...spin....spin....spin...spin..."
        sleep 1
        puts "...spin....spin..."
        sleep 1
        spin = wheel.sample
        puts "Ball lands on #{spin}."
        sleep 1
        if horl == 'high' && high.include?(spin)
          puts "You're a winner!"
          #add winnings to wallet here
          wallet_update(horl_bet)
          sleep 1
        elsif horl == 'low' && low.include?(spin)
          puts "You're a winner!"
          #add winnings to wallet here
          wallet_update(horl_bet)
          sleep 1
        else
          puts "Aww...Nice try"
          #remove bet amount from wallet here
          wallet_update(-horl_bet)
        end

        sleep 2
        system('clear')
        puts "Current Balance:........$#{@wallet}"
        puts "Play High or Low again? (y/n)"
        highorlow_play = gets.chomp

        if highorlow_play != 'y'
          puts "Thanks for playing!"
        end
      end

    elsif bet1 == 4

      evenorodd_play = 'y'
      while evenorodd_play == 'y'

        puts "How would you like to bet?"
        sleep 1
        puts "Even or Odd?"
        eoro = gets.chomp.downcase
        puts "And how much do you want to bet?"
        eoro_bet = gets.to_i
        puts "So you placed $#{eoro_bet} on #{eoro}"
        sleep 1
        puts "...spin....spin....spin...spin..."
        sleep 1
        puts "...spin....spin..."
        sleep 1
        spin = wheel.sample
        puts "Ball lands on #{spin}."
        sleep 1
        if eoro == 'even' && spin.even?
          puts "You are a winner!"
          sleep 1
          #add winnings to wallet here
          wallet_update(eoro_bet)
        elsif eoro == 'odd' && spin.odd?
          puts "You are a winner!"
          sleep 1
          #add winnings to wallet here
          wallet_update(eoro_bet)
        else
          puts "Aww shucks! Better luck next time."
          #remove bet amount from wallet here
          wallet_update(-eoro_bet)
        end

        sleep 2
        system('clear')
        puts "Current Balance:........$#{@wallet}"
        puts "Play Even or Odd again? (y/n)"
        evenorodd_play = gets.chomp

        if evenorodd_play != 'y'
          puts "Thanks for playing!"
        end

      end

    end


    puts "Would you care to try your luck again? (y/n)"
    play = gets.chomp

    if play != 'y'
      puts "Thanks for playing!"
    end

  end
end

def blackJack 
  playAgain = "h"
  until playAgain == "n"
    system('clear')
    puts ""
    puts "Welcome to the BlackJack Table!"
    sleep 1
    puts ""
    puts "How much would you like to bet?"
    puts ""
    bet = gets.chomp!
    bet = bet.to_i
    money_won = bet
    money_lost = - bet
    break if (@wallet + money_lost) < 0
    spades = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
    hearts = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
    clubs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
    diamonds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
    @deck = [spades, hearts, clubs, diamonds]
    @deck = @deck.flatten
    userHand = []
    dealerHand = []
    userHand = dealInitialCards(@deck, userHand)
    userTotal = 0
    dealerTotal = 0
    hit = "h"
    @winner = "n"
    puts ""
    puts "Ok, the dealer will deal you in"
    
    dealerHand = dealInitialCards(@deck, dealerHand) 
    
    #while loop starts here userTotal < 22 or dealerTotal < 22
    until (userTotal > 21 || dealerTotal > 21) || (dealerTotal > 15 && hit == "n" )
      sleep 3
      puts ""
      puts "Your hand is, #{userHand}"
      puts ""
      sleep 1
      userTotal = totalHand(userHand, userTotal)
      dealerTotal = dealerTotalHand(dealerHand, dealerTotal)
      sleep 1
      puts ""
      puts "The dealer's visible cards are #{dealerHand[1..-1]}"

      sleep 3
      puts ""
      puts "Would you like to hit? (y/n)"
      sleep 1
      puts ""
      hit = gets.chomp!
      puts ""

      userHand = userHit(hit, userHand, @deck)
      puts "Your hand is, #{userHand}"
      sleep 2
      userTotal = totalHand(userHand, userTotal)

      puts ""
      puts "Dealer turn"
      puts ""
      sleep 1
      dealerHand = dealerHit(dealerTotal, dealerHand, @deck, userTotal)
      puts "The dealer's visible cards are #{dealerHand[1..-1]}"
      dealerTotal = dealerTotalHand(dealerHand, dealerTotal)
      puts ""
      sleep 2
    end

    sleep 2
    p "The dealer's final hand was"
    p dealerHand
    puts ""
    puts "The dealer's total was #{dealerTotal}"
    puts ""

    sleep 2

    p "Your final hand was"
    p userHand
    puts ""
    puts "Your total was #{userTotal}"
    puts ""

    sleep 2

    declareWinner(dealerTotal, userTotal, @winner)

    puts ""

    sleep 2
    
    if @winner == "User"
      bet = bet
      puts "You win $#{bet}!"
      wallet_update(bet)
      puts "Your stack of chips sits at ..........$#{@wallet}"
    elsif @winner == "Tie"
      bet = 0
      puts "You push!"
    elsif @winner == "Dealer"
      bet = -bet
      puts "You lose $#{-bet} :("
      wallet_update(bet)
      puts "Your stack of chips sits at ..........$#{@wallet}"
    end

    puts ""

    sleep 2



    puts "Would you like to play again? (y/n)"
    playAgain = gets.chomp!
  end

end

def casino

  system('clear')
  intro

  puts "You currently have $#{@wallet}"
  attendance = 'y'
  while attendance == 'y'

    puts "We have only the best games!"
    sleep 1
    puts "****************************************"
    sleep 1

    menu

    puts "So what'll it be?"

    choice = gets.to_i

    if choice == 1
      red_black_blue
    elsif choice == 2
      slots
    elsif choice == 3
      pachinko
    elsif choice == 4
      roulette
    elsif choice == 5
      blackJack 
    end

    puts "Your current balance sits at.......$#{@wallet}"
    puts "----------------------------------------------"
    sleep 1
    puts "Would you like to play a different game? (y/n)"
    attendance = gets.chomp!

    if attendance != 'y'
      puts "It was great to have you!"
      sleep 1
      puts "Please come again!"
    end
        
  end

end



casino