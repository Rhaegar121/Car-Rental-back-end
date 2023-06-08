class CreateCarDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :car_details do |t|
      t.string :name
      t.decimal :price
      t.integer :ratings
      t.string :description

      t.timestamps
    end
  end
end
