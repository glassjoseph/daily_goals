class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.date :date
      t.integer :score
      t.references :daily, foreign_key: true
    end
  end
end
