class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.string   :rating
    end
  end
end
