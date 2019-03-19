game_answers = [ "yes",  "yes", "no", "yes" ]

game_answers.each_with_index do |game_answer, index|
  if game_answer == "yes"
    puts "question " + index.to_s + " - " + game_answer
  end
end

