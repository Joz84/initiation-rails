## ARRAYS

# EXO1

Put a list of questions to your user and store his answers in a array.
Example:

```bash
 > Does it have clear eyes?
 yes
 > Is this a male?
 no
 > Is he vegan?
 no
 > Is he from Aquitaine?
 no
 > Yours answers: [yes, no, no, no]
```

# EXO2

Display a todo list, suggest the delete user an accomplished task and display the updated todo list
Example:

```bash
 > Your todo List
 > ["course", "menage", "lessive"]
 > What task have you accomplished?
 menage
 > Your updated todo list : ["course", "lessive"]
```

## HASHS

# EXO3

You display the user's calendar. you suggest adding a booking
Example:

```bash
 > Your agenda :
 > { "15/03/2019" => "coding skills", "18/03/2019" => "Hollidays"}
 > Add date of booking: (format: "dd/mm/yyyy"):
 20/03/2020
 > add description of booking:
 end of hollidays

 > Your agenda :
 > { "15/03/2019" => "coding skills",
     "18/03/2019" => "Hollidays",
     "20/03/2020" => "end of hollidays"
 }
```
# EXO4

```bash
 > Your order is :
 > { "date" => "12/03/2019",
   "description" => "Achat de courgettes en ligne"
   "status" => "pending"
 }
 > Change the status
 payed
 > { "date" => "12/03/2019",
   "description" => "Achat de courgettes en ligne"
   "status" => "payed"
 }
```

## EACH

# EXO5

Exo 1 with each

```bash
>  A t'il les yeux clairs ?
yes
>  Est ce un homme ?
no
>  Est t'il vegan ?
no
>  Es tu originaire d'aquitaine ?
no
> Yours answers :
[yes, no, no, no]
```

help: you need this array in your code :

```bash
questions = [
  "A t'il les yeux clairs ?",
  "Est ce un homme ?",
  "Est t'il vegan ?",
  "Es tu originaire d'aquitaine ?"
]
```

# EXO6

```bash
> write sentence
To be or not to be, that is the question!
> Your sentence has 41 characters
```

Help: You need to split your string to array (https://ruby-doc.org/core-2.6.2/String.html)

# EXO7

```bash
> write sentence
Read the fucking manual
> Your acronym : RTFM
```

