# Write a method that takes a sentence and prints it like the following:
    # One word per line, in a rectangular frame.

    # For example: the sentence 'Hello World in a frame' gets printed as

        # ***********
        # *  Hello  *
        # *  World  *
        # *   in    *
        # *  a      *
        # *  frame  *
        # ***********

def longest_word sentence
  longest = 0
  a = sentence.split
  a.each do |word|
    if word.length > longest 
      longest = word.length
    end
  end
  @longest = longest 
  @longest 
end


def header num
  (num + 6).times do 
    print "*" 
  end
  print "\n"
end

def body sentence
  i = sentence.split
  i.each do |word|
    a = word.length 
    b = @longest + 2 - a 
    c = " " * b

    print "*  #{word}#{c}*" + "\n" 
  end
end

puts "Enter a sentence."
sen = gets.chomp

sleep 1

longest_word(sen)

header(@longest) 

body(sen)

header(@longest)

