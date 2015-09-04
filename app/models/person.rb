class Person < ActiveRecord::Base
  has_many :jokes, through: :attempts
end
