require 'artii'
module View
extend self


  def intro
    title = Artii::Base.new
    puts "*" * 106
    puts ("                                It's  that  time  of  the  day  . . .")#\nJOOOOOOOOOOOOKE")
    puts "*" * 106
    print title.asciify('JOOOOOOOOOOOOKE')
  end

  def question_prompt
  end

  def correct
    puts "Good Job! You're really funny!"
  end

  def incorrect
    puts "Sorry... moving on"
  end

end

p = View.new
p.intro
