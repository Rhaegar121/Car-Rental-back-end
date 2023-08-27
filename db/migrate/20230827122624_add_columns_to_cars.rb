class AddColumnsToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :type, :string
    add_column :cars, :door, :integer
    add_column :cars, :seat, :integer
    add_column :cars, :bag, :integer
    add_column :cars, :min_oil, :integer
    add_column :cars, :max_oil, :integer
  end
end
