require_relative '../spec_helper'

describe Dummy do
  it 'is an Active Record model' do
    expect(Dummy.new).to be_a_kind_of ActiveRecord::Base
  end
end
