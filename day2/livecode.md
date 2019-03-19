# Day 2: Array, Hash and Each method

Remarque: Pour suivre le live code, taper ca dans le terminal :

```bash
cd
cd Desktop/coding_skills/day2
touch livecode.rb
```

Puis une fois les modifications faites ne pas oublier de sauvegarder.
Pour executer le programme dans le terminal :

```bash
ruby livecode.rb
```

## ARRAY
Array => List

### Create
```ruby
empty_array = []
students = [ "Steve", "Pauline", "Megane" ]
# index =>    0         1          2
```

### Read
```ruby
p students
p students[1]
```

### Update
```ruby
students[2] = "Meghane"
students << "Thomas"
p students
```

### Delete
```ruby
students.delete("Steve")
p students
students.delete_at(1)
p students
```

### Other methods
https://ruby-doc.org/core-2.6.2/Array.html

```ruby
p students.sort
p students.shuffle
p students
```

## HASH
Hash => Dictionary


### Create
```ruby
empty_hash = {}
fruits = {
  "fraise" => "C'est un fruit plutôt rouge",
  "Banane" => "C'est un fruit carrement jaune",
  "Avocat" => "C'est un fruit plutôt contreversé"
}
#   keys   =>   values
```

### Read
```ruby
p fruits
p fruits["Banane"]
```

### Update
```ruby
fruits["Avocat"] = "C'est un fruit plutôt vert"
p fruits
fruits["Pamplemousse"] = "C'est un fruit plutôt orange"
p fruits
```

### Delete
```ruby
fruits.delete("Banane")
p fruits
```

### Other methods
https://ruby-doc.org/core-2.6.2/Hash.html
```ruby
p fruits.keys
p fruits.values
```

### Other example
```ruby
student = {
  "name" => "Jo",
  "age" => 34,
  "answers" => ["yes", "no", "no", "no"],
}
p student["name"]
```

## EACH METHOD

Each => Loop (method)

### Exemple: Say Hello!

Result
```bash
> "Hello STEVE!!!"
> "Hello PAULINE!!!"
> "Hello MEGHANE!!!"
```

```ruby
students = [ "Steve", "Pauline", "Meghane" ]
students.each do |student|
  puts "Hello " + student.upcase + "!!!"
end
```

### Exemple: Average

```ruby
rates = [ 4, 8, 7, 1 ]
```

Step 1
```ruby
average = (4 + 8 + 7 + 1) / 4
```
Step 2
```ruby
sum = 4 + 8 + 7 + 1
size = 4
average = sum / size
```

Step 3
```ruby
sum = 0
rates.each do |rate|
     sum = sum + rate
# 1: sum = 0   + 4
# 2: sum = 4   + 8
# 3: sum = 12  + 7
# 4: sum = 19 + 1
end

puts sum / rates.size
```







