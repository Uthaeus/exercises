main = {
  'main_course': ['Steak', 'Pizza', 'Po Boy', 'Sushi']
}

def chef_special hash
  # i = hash.flatten.sample
  # i.to_s
  menu_items = []
  hash.map { |category| menu_items << category.last }.flatten.sample
end