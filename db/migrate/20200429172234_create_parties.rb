class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.references :game, foreign_key: true
      t.string :ten_letters_list
      t.string :word
      t.boolean :available
      t.integer :score

      t.timestamps
    end
  end
end
