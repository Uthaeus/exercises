inventory = {
  'boots': ['hiking', 'urban', 'knee-high'],
  'shoes': ['sneekers', 'dress', 'sports', 'casual', 'heels'],
  'sandal': ['hiking', 'comfort', 'hippie']

}

boots = ['steel-toe', 'leather']
shoes = ['extra-cushion', 'designer-laces', 'bedazzling',]
sandal = ['leather', 'open-toe', 'closed-toe']
brands = ['Adidas', 'Puma', 'Reef', 'Nike', 'Mizuna', 'Converse', 'Woodland', 'Under Armour']
designer_brands = ['Jimmy Choo', 'Louis Vitton', 'Gucci']

def brand_list brand
  brand.each do |i|
    p i
  end
end

def query ans
  a = ans.downcase
  case ans
  when a == 'type' then p inventory
  when a == 'brand' then 
    p brands 
    p designer_brands

  end
end



def daily_special hash
  inventory_items = []
  hash.map { |category| inventory_items << category.last }.flatten.sample
end


p "Welcome to Doug's HOUSE OF FOOTWEAR."
p "************************************"
p "We have a wide variety."
p "Boots -"
p inventory[:boots]
p "Shoes -"
p inventory[:shoes]
p " Sandals -"
p inventory[:sandal]
p "***********************************"
brand_list(brands)
p "***********************************"
brand_list(designer_brands)
p "***********************************"
p "Half-off sale of the day is:"
a = daily_special(inventory)
p a 
p "***********************************"
p "Please enter how you would like to begin your search"
p "(type or brand)"
ans1 = gets.chomp
query(ans1)







