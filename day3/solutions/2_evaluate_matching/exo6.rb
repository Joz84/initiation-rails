game_answers = [ "yes",  "yes", "no", "yes" ]
pauline_answers = [ "yes",  "yes", "no", "no" ]


matching = 0
game_answers.each_with_index do |game_answer, index|
  pauline_answer = pauline_answers[index]
  if game_answer == pauline_answer
    matching = matching + 1
  end
end

puts matching
