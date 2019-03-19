game_answers = [ "yes",  "yes", "no", "yes" ]

count = 0
game_answers.each_with_index do |game_answer, index|
  if game_answer == "yes"
    count = count + 1
  end
end

p count
