puts "Courses: Array"
# Array => List

# Create
empty_array = []
students = [ "Steve", "Pauline", "Megane" ]
# index =>    0         1          2
#
# Read
p students
p students[1]

# Update
students[2] = "Meghane"
students << "Thomas"

p students

# Delete
students.delete("Steve")
p students
students.delete_at(1)
p students

# Other methods
#https://ruby-doc.org/core-2.6.2/Array.html

p students.sort
p students.shuffle
p students



