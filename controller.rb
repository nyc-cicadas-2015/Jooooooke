require_relative 'config/environment'
require_relative 'app/models/joke'
require_relative 'app/models/dummy'
require_relative 'app/view'
require_relative 'model'



class Controller
  include View
  attr_accessor :joke_gen
  def initialize
    @joke_gen = JokeGenerator.new(all_jokes: Joke.all.to_a, all_dummy: Dummy.all.to_a )
  end

  def run
    system("clear")
    View.intro
    puts "\n"
    until joke_gen.game_over?
      curr_joke = @joke_gen.joke_getter
      puts curr_joke.question
      puts "a) #{curr_joke.answer}"
      puts "b) #{joke_gen.dummy_sample}"
      puts "c) #{joke_gen.dummy_sample}"
      View.question_prompt
      if View.get_user_input == "a"
        View.correct
        system("clear")
      else
        View.incorrect
      end
    end
    View.game_over
  end
end


new_game = Controller.new
new_game.run
