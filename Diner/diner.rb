# Bottega Diner (nested hashes)
# Have a breakfast, lunch and dinner menu.  Breakfast has different items, lunch and dinner have the same items but are different prices.
# - show them the entire menu (print out)
# You get one entree and two side choices at regular cost.
# - User selects an entree.
# - waitress suggests a chef’s special, which is a random mix of 1 entree and 2 side choices
# - “Waitress” makes a comment based on their selection (you ordered this? That’s gross)
# - comment can either be a comparison of the two items, or random comment pulled from a comment vault.
# - Tell them the price
# - repeat the above options for side choices (suggestion and a price, don’t repeat chef suggestion)
# - total up the cost

# BONUS: Allow for item customization (how items are prepared, decide addtional cost implications)
# EXTRA BONUS: 3D print out actual food and eat it.

breakfast = {"Beans": 2, "Bacon": 2, "Flapjacks": 3, "Sausage": 4}
lunch = {"Sammich": 5, "Burger": 6, "Salad": 4, "Big Boy Burrito": 7}
dinner = {"Sammich": 6, "Burger": 8, "Salad": 6, "Big Boy Burrito": 10}
sides1 = {rice: 2, fries: 1, "potato salad": 2, "side salad": 2}
drinks = {'soda': 2, 'milk': 2, 'tea': 1, 'coffee': 1}
fault = "What was that, hon?"
main = {
  'main_course': ['Steak', 'Pizza', 'Po Boy', 'Sushi']
}
sides = {
  'side': ['rice', 'fries', 'potato salad', 'side salad', 'refried beans', 'chips']
}
arr = []

def chef_special hash
  # i = hash.flatten.sample
  # i.to_s
  menu_items = []
  hash.map { |category| menu_items << category.last }.flatten.sample
end
p "Hey sweetie, let me start off by offering the Chef's Special, only $8.95!"
print "#{chef_special(main)} which comes with #{chef_special(sides)} and #{chef_special(sides)}."
p "Sound good? (y or n)"
ans1 = gets.chomp
if ans1 == 'y'
  p "Good choice, honey"
  t = 8.95
  p "**********"
  p "How about something to drink? (y or n)"
  drinks.each do |k, v|
    p "#{k}, $#{v}"
  end
  ans6 = gets.chomp
  if ans6 == 'y'
    p "What can I get you?"
    ans7 = gets.chomp
    arr.push ans7
    p "So a Chef's Special with a #{ans7}."
    p "********"
    e = drinks.values_at(*arr).to_f
    t = 8.95 + e
    p "Looks like your total comes to $#{t}."
  else
    p "**********"
    p "So, just the Chef's Special comes to $8.95."
  end

else
  p "Why don't you have a look over the menu then."
  p "**********"
  p "For breakfast we have"
  breakfast.each do |k, v|
    p "#{k}, $#{v}"
  end
  p "**********"
  p "For lunch"
  lunch.each do |k, v|
    p "#{k}, $#{v}"
  end
  p "**********"
  p "And if you're feeling really hungry, try the dinner menu"
  dinner.each do |k, v|
    p "#{k}, $#{v}"
  end

  p "So what can I getchya, hon?"
  ans2 = gets.chomp
  arr.push ans2

  if ans2 == 'Sammich' || ans2 == 'Burger' || ans2 == 'Salad' || ans2 == 'Big Boy Burrito'
    p "Are you mad hungry or just regular kind of hungry? (mad or reg)"
    ans3 = gets.chomp

    p "So, a #{ans2}? And this will also come with a choice of two sides"
    p "*********"
    sides1.each do |k, v|
      p "#{k}"
    end
    p "What'll the first one be?"
    ans4 = gets.chomp
    arr.push ans4
    p "********"
    p "And the second?"
    ans5 = gets.chomp
    arr.push ans5

    p "**********"
    p "So you ordered a #{ans2} #{ans3}-sized with #{ans4} and #{ans5}"
    p "**********"
    p "How about something to drink? (y or n)"
    drinks.each do |k, v|
      p "#{k}, $#{v}"
    end
    ans6 = gets.chomp
    if ans6 == 'y'
      p "What can I get you?"
      ans7 = gets.chomp
      arr.push ans7
      p "***********"
      p "Finally we have a #{ans2} #{ans3}-sized with #{ans4} and #{ans5} and a #{ans7} to drink."
      if ans3 == 'mad'
        c = dinner.values_at(*arr).sum
        e = drinks.values_at(*arr).sum
        t = c + e
        p "Your total comes to $#{t}"
      else
        b = lunch.values_at(*arr).sum
        e = drinks.values_at(*arr).sum
        t = b + e
        p "Your total comes to $#{t}"
      end
    else
      p "***********"
      p "Finally we have a #{ans2} #{ans3}-sized with #{ans4} and #{ans5}."
      if ans3 == 'mad'
        c = dinner.values_at(*arr).sum
        t = c
        p "Your total comes to $#{t}."
      else
        b = lunch.values_at(*arr).sum
        t = b
        p "Your total comes to $#{t}."
      end
    end


  else

    p "#{ans2} will come with two sides."
    p "********"
    sides1.each do |k, v|
      p "#{k}"
    end
    p "What'll the first one be?"
    ans4 = gets.chomp
    arr.push ans4
    p "*******"
    p "And the second?"
    ans5 = gets.chomp
    arr.push ans5
    p "********"
    p "So you ordered #{ans2} with #{ans4} and #{ans5}."
    p "*********"
    p "How about something to drink? (y or n)"
    drinks.each do |k, v|
      p "#{k}"
    end
    ans6 = gets.chomp
    if ans6 == 'y'
      p "What can I get you?"
      ans7 = gets.chomp
      arr.push ans7
      p "*********"
      p "So finally we have #{ans2} with #{ans4} and #{ans5} and a #{ans7} to drink."
      a = breakfast.values_at(*arr).sum
      e = drinks.values_at(*arr).sum
      t = a + e
      p "Your total comes to #{t}."
    else
      p "********"
      p "So finally we have #{ans2} with #{ans4} and #{ans5}."
      a = breakfast.values_at(*arr).sum
      t = a
      p "Your total comes to #{t}."
    end
  end
end

# a = breakfast.values_at(*arr).sum
# b = lunch.values_at(*arr).sum
# c = dinner.values_at(*arr).sum
# d = sides1.values_at(*arr).sum
# e = drinks.values_at(*arr).sum

# total = a + b + c + d + e

# p total




























