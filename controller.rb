require_relative 'config/environment'
require_relative 'app/models/joke'
require_relative 'app/models/dummy'
require_relative 'app/view'
require_relative 'model'


class Controller
  include View
  #unless game over? (model)
  #shift the first question & answer (model)
  #randomly select 2 dummy answers (model)
  #display to user (view)
  #user will input a,b,or c (controller)
  #we will tell them if they are correct or not (view)

  attr_accessor :joke_gen
  def initialize
    # p Joke.all
    @joke_gen = JokeGenerator.new(all_jokes: Joke.all.to_a, all_dummy: Dummy.all.to_a )
  end

  def run
    View.intro
    puts "\n"
    View.question_prompt
    until joke_gen.game_over?
      curr_joke = @joke_gen.joke_getter
      puts curr_joke.question
      puts "a) #{curr_joke.answer}"
      puts "b) #{joke_gen.dummy_sample}"
      puts "c) #{joke_gen.dummy_sample}"
      if View.get_user_input == "a"
        View.correct
        system("clear")
      else
        View.incorrect
      end
    end
  end

end


new_game = Controller.new
new_game.run
