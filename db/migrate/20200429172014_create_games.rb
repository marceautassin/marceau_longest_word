class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.integer :total_score
      t.integer :parties_number

      t.timestamps
    end
  end
end
