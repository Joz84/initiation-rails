puts "Courses: Each Method"
# Each => Loop (method)

### Exemple: Say Hello!

students = [ "Steve", "Pauline", "Meghane" ]

#> "Hello STEVE!!!"
#> "Hello PAULINE!!!"
#> "Hello MEGHANE!!!"

students.each do |student|
  puts "Hello " + student.upcase + "!!!"
end

### Exemple: Average


rates = [ 4, 8, 7, 1 ]

# Step 1
# average = (4 + 8 + 7 + 1) / 4

# Step 2
# sum = 4 + 8 + 7 + 1
# size = 4
# average = sum / size

# Step 3
sum = 0
rates.each do |rate|
     sum = sum + rate
# 1: sum = 0   + 4
# 2: sum = 4   + 8
# 3: sum = 12  + 7
# 4: sum = 19 + 1
end

puts sum / rates.size





