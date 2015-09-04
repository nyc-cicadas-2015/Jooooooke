require_relative '../spec_helper'

describe Joke do
  it 'is an Active Record model' do
    expect(Joke.new).to be_a_kind_of ActiveRecord::Base
  end
end
