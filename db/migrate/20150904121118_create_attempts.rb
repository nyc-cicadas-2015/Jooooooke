class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.string   :ratings
    end
  end
end
