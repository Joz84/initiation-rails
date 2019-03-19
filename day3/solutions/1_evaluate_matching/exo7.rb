game_answers = [ "yes",  "yes", "no", "yes" ]
pauline_answers = [ "yes",  "yes", "no", "no" ]


def evaluate_matching_between(game_answers, student_answers)
  matching = 0
  game_answers.each_with_index do |game_answer, index|
    student_answer = student_answers[index]
    if game_answer == student_answer
      matching = matching + 1
    end
  end
  return matching
end

pauline_matching = evaluate_matching_between(game_answers, pauline_answers)
puts pauline_matching
