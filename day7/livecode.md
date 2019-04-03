Terminal:
```bash
rails generate model Game answers:text
```

Sublime text: /db/migrate/20190402223056_create_games.rb
```ruby
class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.text :answers, array: true, default: []

      t.timestamps
    end
  end
end
```

Terminal:
```bash
 rails db:migrate

== 20190402223056 CreateGames: migrating ======================================
-- create_table(:games)
   -> 0.0218s
== 20190402223056 CreateGames: migrated (0.0219s) =============================
```

Sublime text: /app/controllers/games_controller.rb
```ruby
  def create
    @game = Game.create   # Ask at Game model to create a new game with new id
                          # teh new game is like that : {"id" => 1, "answers" => []}
                          # to see the game answers array, i juste need write @game["answers"]
    redirect_to edit_game_path(id: @game["id"], question_id: 0), method: :get # @game["id"] render the id of game
  end
```

Sublime text: /app/controllers/games_controller.rb
```ruby
  def edit
    @game_id = params["id"]
    @question_id = params["question_id"].to_i
    @question = QUESTIONS[@question_id]
  end
```

Sublime text: /app/views/games/edit.html.erb
```html
<h1><%= @question %></h1>

<%= link_to "Yes", game_path(id: @game_id, question_id: @question_id + 1, answer: "yes"), method: :patch %>
<%= link_to "No", game_path(id: @game_id, question_id: @question_id + 1, answer: "no"), method: :patch %>
```

Sublime text: /app/controllers/games_controller.rb
```ruby
  def update
    # stock the answer in game answers array initialized in the create method
    @game_id = params["id"]
    @game = Game.find(@game_id)
    @game["answers"] << params["answer"]
    @game.save
    @question_id = params["question_id"].to_i
    if @question_id < QUESTIONS.size
      redirect_to edit_game_path(id: @game_id, question_id: @question_id), method: :get
    else
      redirect_to game_path(id: @game_id), method: :get
    end
  end
```

Sublime text: /app/controllers/games_controller.rb
```ruby
  def show
    @game_id = params["id"]
    @game = Game.find(@game_id)
    @answers = @game["answers"]
    @students = STUDENTS
  end
end
```

Sublime text: /app/views/games/show.html.erb
```html
<h1>Results</h1>

<ol>
  <% @answers.each_with_index do |answer, index| %>
    <li>Answer <%= index %> : <%= answer %></li>
  <% end %>
</ol>

<ol>
  <% @students.each do |student| %>
    <li><%= student["name"] %> with matching of 3/4</li>
  <% end %>
</ol>
```

Sublime text: /app/models/game.rb
```ruby
class Game < ApplicationRecord
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
end
```

Sublime text: /app/views/games/show.html.erb
```html
<h1>Results</h1>

<ol>
  <% @students.each do |student| %>
    <% matching = @game.evaluate_matching_between(@game["answers"], student["answers"]) %>
    <li><%= student["name"] %> with matching of <%= matching %>/4</li>
  <% end %>
</ol>
```





