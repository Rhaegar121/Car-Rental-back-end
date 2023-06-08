class DropTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :car_details
    drop_table :user_favourites
  end
end
