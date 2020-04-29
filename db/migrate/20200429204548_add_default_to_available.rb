class AddDefaultToAvailable < ActiveRecord::Migration[5.2]
  def change
  change_column_default :parties, :available, false

  end
end
