# Day 3: Conditional and Methods

## Conditional
### Booleans
```bash
true
false
```

### if
```bash
if condition
  action
end
```

Example: First letter is "A"

```bash
names = [ "Alice", "Bob", "Charly", "Alex" ]

names.each do |name|
  if name[0] == "A"
    puts name
  end
end
```

### if, else
```bash
if condition
  action1
else
  action2
end
```

Example: Age drink
```bash
age = 19

if age >= 18
  puts "Je peux boire de l'alcool"
else
  puts "Je peux boire de l'alcool avec modération"
end
```

## Multiple conditions
### AND

```bash
true  && true   # => true
true  && false  # => false
false && true   # => true
false && false  # => false
```

### OR

```bash
true  || true   # => true
true  || false  # => true
false || true   # => true
false || false  # => false
```

Example: Opening Hours
```bash
horaire = 9

if ( horaire <= 12 && horaire > 8 ) || ( horaire >= 14 && horaire < 18 )
  puts "Shop is open"
end
```

## Methods
### Example 1 : Hello Alice

In your terminal:
```bash
> Hello Alice
> Hello Bob
> Hello Charly
```

Solution 1 (Bad)
```bash
puts "Hello Alice"
puts "Hello Bob"
puts "Hello Charly"
```

Solution 2 (Good: Don't repeat your self)
```bash
def puts_hello_name(salutation, name)
  puts salutation + " " + name
end

puts_hello_name("Salut", "Alice") # => puts "Hello Alice"
puts_hello_name("Hello", "Bob") # => puts "Hello Bob"
```

### Exemple 2: Full Name

In your terminal:
```bash
What is your first name?
> joe
What is your last name?
> patrick
Joe PATRICK
```

```bash
def full_name(first_name, last_name)
  new_first_name = first_name[0].upcase + first_name[1..-1].downcase
  new_last_name = last_name.upcase
  new_first_name + " " + new_last_name
end

puts "What is your first name?"
first_name = gets.chomp
puts " What is your last name?"
last_name = gets.chomp
puts full_name("JOE", "patrick")
```

