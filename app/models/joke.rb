class Joke < ActiveRecord::Base
  belongs_to :person

  def question_getter
  end

  def answer_getter
  end

  def dummy_getter
  end

end
