legumes = ["Carotte", "Poireau", "Courgette"]
colors = ["Orange", "Blanche", "Verte"]

legumes.each_with_index do |legume, index|
  color = colors[index]
  puts "Le légume nommé " + legume + " est e couleur " + color
end
