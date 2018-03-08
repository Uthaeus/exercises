# name = "Homer"
# address = ["123 Anystreet Ave", "Anytown", "TX"]
# puts "A string" - returns nil
# p "A string" - returns value
# p 100 - returns 100
# puts [1, 2, 3, 4] - iterates over each element

# puts "What is your password?"
# password = gets.chomp

# if password == "asdfasdf"
#   return true
# else
#   return false
# end

# Local Variable
#   10.times do
#     x = 10
#     p x
#   end
#   variable accessible only within its local scope

# Global Variable
#   10.times do
#     $x = 10
#   end
#   p $x
#   variable accessible throughout entire application

# Instance Variable
#   @batting_average = 300
#   variable available to that instance

# Constant Variable
#   TEAM = "Angels"
#   TEAM = "Athletics"

#   p TEAM - would print "Athletics", but will give warnings

# Class Variable
#   class MyClass
#     @@teams = ["A's", "Tigers"]
#   end
# String Interpolation

# puts "Name and animal"
# animal = gets.chomp

# puts "Name a noun"
# noun = gets.chomp

# p "The quick brown #{animal} jumped over the lazy #{noun}"

# p "The quick brown #{ 2 + 2}" - can insert coding 

# "Astros".upcase
#         .downcase
#         .swapcase
#         .reverse
# -method chaining-

# str = "The quick brown fox jumped over the quick dog"

# str.sub "quick", "slow" - will change the first instance
# str.gsub - will change all instances
# str.gsub! - will change all instances and the original string

# str.strip - removes extra space before and after

# str.split - breaks up a string into an array of words
# str.split.size - returns the number of words (elements in the array)
# str.split(//).size - returns the number of letters (including spaces)

# def baseball_team_list
#   ["A's", "Angels", "Astros"]
# end

# puts baseball_team_list - iterates each element in the array

# class Invoice
#     #Class method
#   def self.print_out
#     "Printed out invoice"
#   end
#     #Instance method - requires a new instance created to call method
#   def convert_to_pdf
#     "Converted to PDF"
#   end
# end

# Invoice.print_out - "Printed out invoice"

# i = Invoice.new
# i.convert_to_pdf - "Converted to PDF"

# full_name = Proc.new { |first, last| first + " " + last}

# p full_name["Jim", "Beam"]
# p full_name.call("Jim", "Beam")

# first_name = lambda { |first, last| first + " " + last}

# p first_name["Jim", "Beam"]
# p first_name.call("Jim", "Beam")

# first_name = ->(first, last) {first + " " + last}


# #Argument Count
# full_name = lambda { |first, last| first + " " + last }
# p full_name.call("Jim", "Beam")

# full_name = Proc.new { |first, last| first + " " + last}
# p full_name.call("Jim", "Beam") 

# #Return behavior
# def my_method
#   x = lambda { return }
#   x.call
#   p "Text from within the method"
# end
# my_method

# def my_method
#   x = Proc.new { return }
#   x.call
#   p "Text from within the method"
# end
# my_method


# def full_name(first_name, last_name)
#   first_name + " " + last_name
# end

# puts full_name("Jim", "Beam")

# def print_address city:, state:, zip:
#   puts city
#   puts state
#   puts zip
# end
# print_address city: "Scottsdale", state: "AZ", zip: 85251

# def sms_generator api_key:, num:, msg:, locale:
#   #magic sms stuff...
# end
# sms_generator num: 5555555, api_key: '987234how', msg: 'hey there', locale: 'US'

# def stream_movie title:, lang: "ENG"
#   puts title 
#   puts lang
# end
# stream_movie title: "The Fountainhead"
# stream_movie title: "The English Patient", lang: "FR"


# def roster player_1, player_2, player_3
#   puts player_1
#   puts player_2
#   puts player_3
# end
# roster 'Altuve', 'Gattis', 'Springer'

# def roster *players
#   p players
# end
# roster 'Altuve', 'Gattis', 'Springer', 'Bregman', 'Correa'

# def roster **players_with_positions
#   players_with_positions.each do |player, position|
#     puts "Player: #{player}"
#     puts "Position: #{position}"
#     puts "\n"
#   end
# end

# data = {
#   "Altuve": "2nd Base",
#   "Alex Bregman": "3rd Base",
#   "Evan Gattis": "Catcher",
#   "George Springer": "OF"
# }
# roster data

# def invoice options={}
#   puts options[:company]
#   puts options[:total]
#   puts options[:something_else]
# end
# invoice company: "Google", total: 100.0, something_else: "asdf"

# while loop
# i = 0
# while i < 10
#   puts "Hey there"
#   i += 1
# end

# each loop
# arr = [23, 234252, 453, 1234, 5424753, 543]

# arr.each do |i|
#   p i
# end

# arr.each{ |i| p i }

# for loop
# for i in 0..42
#   p i
# end

# teams = {
#   "Houston Astros" => {
#     "first base" => "Chris Carter",
#     "second base" => "Jose Altuve",
#     "shortstop" => "Carlos Correa"
#   },
#   "Texas Rangers" => {
#     "first base" => "Prince Fielder",
#     "second base" => "R. Odor",
#     "shortstop" => "Elvis Andrus"
#   }
# }

# teams.each do |team, players|
#   puts team
#   players.each do |position, player|
#     p "#{player} starts at #{position}"
#   end
# end

# #Given an array of integers
# #Only grab the even integers
# (1..10).to_a.select do |x|
#   x.even?
# end

# (1..10).to_a.select { |x| x.even? }
# (1..10).to_a.select(&:even?)

# #Given an array of strings
# #Return only the words over five letters
# arr = %w(The quick brown fox jumped over the lazy dog)
# arr.select { |x| x.length > 5 }

# #given an array of strings
# #Return all of the vowels
# %w(a b c d e f g).select { |v| v =~ /[aeiou]/ }

# ["1", "23.0", "0", "4"].map { |x| x.to_i }
# ["1", "23.0", "0", "4"].map(&:to_i)

# ("a".."g").to_a.map { |i| i * 2 }
# Hash[1, 2.1, 3.33, 0.9].map { |x| [x,x.to_i] }

# Hash[%w(A dynamic open source programming language).map { |x| [x,x.length]}]
# {:a => "foo", :b => "bar"}.map{ |a, b| "#{a}=#{b}"}.join('&')

# [3, 2, 4, 53, 3, 23343, 4342, 12, 3].inject(&:+)
# [3, 2, 4, 53, 3, 23343, 4342, 12, 3].inject(&:*)



# x = 10
# y = 5
# if x == y 
#   puts "x is the same as y"
# else
#   puts "x and y are not the same"
# end

# players = ["Correa", "Carter", "Altuve"]

# unless players.empty?
#   players.each {|player| puts player}
# end

# players.each {|player| puts player} unless players.empty?

# players.each {|player| puts player} if !players.empty?

# x = 10
# y = 100
# z = 10

# if x == y
#   puts "x is equal to y"
# elsif x > z
#   puts "x is greater than z"
# else
#   puts "something else"
# end

# x = 10
# y = 100
# z = 10

# if x == y
#   if x == z
#     puts "equal to everything"
#   end
# end

# if x == y || x == z
#   puts "from the if statement"
# end

# if (x == 10 && x == z) || x == y
#   puts "from the if statement"
# end

# positions = { first_base: "Chris Carter", second_base: "Jose Altuve", short_stop: "Carlos Correa" }
# positions = { "first_base" => "Chris Carter", "second_base" => "Jose Altuve", "short_stop" => "Carlos Correa" }

# positions = { first_base: "Chris Carter", second_base: "Jose Altuve", short_stop: "Carlos Correa" }
# positions[:second_base]
# positions[:shortstop]

# people = {jordan: 32, tiffany: 27, kristine: 10, heather: 29}
# people[:tiffany]
# people.delete(:kristine)

# people = {jordan: 32, tiffany: 27, kristine: 10, heather: 29}
# people.each_key do |key|
#   puts key
# end

# people = {jordan: 32, tiffany: 27, kristine: 10, heather: 29}
# people.each_value do |value|
#   puts value
# end

# people = {jordan: 32, tiffany: 27, kristine: 10, heather: 29}
# people[:leann] = 42

# people.invert

# people_2 = people.invert
# people.merge(people_2)
# people.to_a
# people.keys
# people.values

# x = [12, 3, 454, 234, 234]
# y = Array.new

# y[0] = 543

# y[10] = 432

# y.each do |i|
#   puts i
# end

# x = ["asdf", 3, 4, 12, "asdf", "b", true, 34, 2, 4, 4, 4]
# x.length
# x.delete(4) --> removes all of the 4s
# x.delete_at(2) --> romoves the item at position
# x.delete_at(4)

# batting_averages = [0.300, 0.180, 0.220, 0.250]
# batting_averages.delete_if { |average| average < 0.24 }


# teams = ["astros", "yankees", "rangers", "mets", "cardinals"]
# teams.push("marlins")
# teams.push("red sox", "blue jays")
# teams.pop
# z= teams.pop

# positions = { first_base: "Chris Carter", second_base: "Jose Altuve", short_stop: "Carlos Correa"}

# positions[:second_base]
# positions[:short_stop]






































