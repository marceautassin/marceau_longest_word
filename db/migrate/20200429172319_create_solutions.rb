class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.references :party, foreign_key: true
      t.string :word

      t.timestamps
    end
  end
end
