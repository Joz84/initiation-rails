vegetables = ["Carotte", "Poireau", "Courgette"]
colors = ["Orange", "Blanche", "Verte"]

vegetables.each_with_index do |vegetable, index|
  color = colors[index]
  puts "Le légume nommé " + vegetable + " est e couleur " + color
end
