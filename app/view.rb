class View

  def intro
    puts "*" * 100
    puts "It's that time of the day\nJOOOOOOOOOOOOKE"
    puts "*" * 100
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
