class CreateJoke < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string   :question
      t.string   :answer
    end
  end
end
