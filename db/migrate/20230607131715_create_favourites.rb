class CreateFavourites < ActiveRecord::Migration[7.0]
  def change
    create_table :favourites do |t|
      t.string :name
      t.decimal :price
      t.integer :ratings

      t.timestamps
    end
  end
end
