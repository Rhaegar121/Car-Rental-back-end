class AddCarIdToFavourites < ActiveRecord::Migration[7.0]
  def change
    add_reference :favourites, :car, null: false, foreign_key: true
  end
end
