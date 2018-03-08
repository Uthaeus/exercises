
def rand_card
  suit = ['spades', 'clubs', 'hearts', 'diamonds']
  val = (2..10).to_a
  val << ['Jack', 'Queen', 'King', 'Ace']
  val1 = val.flatten
  random_card = { suit.sample => val1.sample }

  puts "#{random_card}"
  puts "Your card is the #{random_card.values} of #{random_card.keys}"
end

rand_card


# my_hash = {}

# Code Challenge: 
# Create a method that returns a random card from a deck of cards. Each card must have a value and a suit.

# require 'pry'

# # Deck of Cards has a suit, facecard, value 


# deck = { "hearts" => { :one => 1, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10,  },
#           "clubs" => {  },
#           "diamonds" => {  },
#           "spades" => {  }

#         }

        