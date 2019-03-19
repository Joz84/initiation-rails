game_answers = [ "yes",  "yes", "no", "yes" ]
pauline_answers = [ "yes",  "yes", "no", "no" ]

puts "Game | Pauline"

game_answers.each_with_index do |game_answer, index|
  pauline_answer = pauline_answers[index]
  if game_answer == pauline_answer
    puts game_answer + " | " + pauline_answer
  end
end

