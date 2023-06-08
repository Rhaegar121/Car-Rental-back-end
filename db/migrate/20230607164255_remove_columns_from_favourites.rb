class RemoveColumnsFromFavourites < ActiveRecord::Migration[7.0]
  def change
    remove_column :favourites, :name, :string
    remove_column :favourites, :price, :decimal
    remove_column :favourites, :ratings, :integer
  end
end
