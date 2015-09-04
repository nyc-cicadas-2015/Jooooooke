class JokeGenerator
  attr_accessor :all_jokes, :all_dummy
  attr_writer :used_joke

  def initialize(args={})
    @all_jokes = args[:all_jokes]
    @all_dummy = args[:all_dummy]
    # require 'pry'; binding.pry
    # todo: randomize later
  end

  def joke_getter
    @all_jokes.shift
  end

  def dummy_getter
    @all_dummy.shift
  end

  def dummy_sample
    dummy_getter.dummy_answer
  end

  def game_over?
    @all_jokes.empty?
  end

end

