class CreateDummy < ActiveRecord::Migration
  def change
    create_table :dummies do |t|
      t.string   :dummy_answer
    end
  end
end
