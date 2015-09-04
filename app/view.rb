require 'artii'
require 'colorize'

module View
extend self

  def intro
    title = Artii::Base.new
    puts "*".yellow * 106
    puts ("                                It's  that  time  of  the  day  . . .").green
    puts "*".yellow * 106
    print title.asciify('JOOOOOOOOOOOOKE').green
  end

  def question_prompt
    puts ">> ".red
  end

  def get_user_input
    gets.chomp
  end

  def correct
    puts "Good Job! You're really funny!".green
  end

  def incorrect
    puts "Sorry... moving on".red
  end

  def game_over
    puts "Thanks for playing... we'll be here all week."
  end

end
