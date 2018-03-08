# Write a mad lib that pulls from a serarate file that has a list of nouns, verbs, adjectives, pronouns, etc.

# Get user input that writes into those files from your main file.

# Make them all in different files, making them as modules. Figure out how to bring in and implement the modules into your main file.

# File class <---
def noun
  File.open('nouns.txt') do |noun|
    puts noun 
  end
end

def exclamation
  File.open('exclamations.txt', "r") do |exclamation|
    puts exclamation
  end
end

def verb
  File.open('verbs.txt', "r") do |verb|
    puts verb
  end
end

def adjective
  File.open('adjectives.txt', "r") do |adjective|
    puts adjective
  end
end

def pronoun
  File.open('pronouns.txt', "r") do |pronoun|
    puts pronoun
  end
end

def adverb
  File.open('adverbs.txt', "r") do |adverb|
    puts adverb
  end
end


puts "Welcome to the mad lib generator."
puts "---------------------------------"
sleep 1
puts ""
puts ""

puts '"_____________! he said ________ as he jumped into his convertible
  exclamation            adverb
  ______ and drove off with his ___________ wife."
   noun                          adjective'

sleep 1

puts ""
puts ""

puts "'#{exclamation}! he said #{adverb} as he jumped into his convertible
   exclamation            adverb
  #{noun} and drove off with his #{adjective}wife.'
   noun                          adjective"


