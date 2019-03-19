puts "Courses: Hash"
# Hash => Dictionary


# Create
empty_hash = {}
fruits = {
  "fraise" => "C'est un fruit plutôt rouge",
  "Banane" => "C'est un fruit carrement jaune",
  "Avocat" => "C'est un fruit plutôt contreversé"
}
#   keys   =>   values

# Read
p fruits
p fruits["Banane"]

# Update
fruits["Avocat"] = "C'est un fruit plutôt vert"
p fruits
fruits["Pamplemousse"] = "C'est un fruit plutôt orange"
p fruits

# Delete
fruits.delete("Banane")
p fruits

p fruits.keys
p fruits.values

student = {
  "name" => "Jo",
  "age" => 34,
  "answers" => ["yes", "no", "no", "no"],
}

p student["name"]



