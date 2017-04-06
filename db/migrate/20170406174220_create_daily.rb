class CreateDaily < ActiveRecord::Migration[5.0]
  def change
    create_table :dailies do |t|
      t.string :goal
      t.references :user, foreign_key: true
    end
  end
end
