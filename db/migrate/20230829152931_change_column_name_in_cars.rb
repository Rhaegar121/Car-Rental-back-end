class ChangeColumnNameInCars < ActiveRecord::Migration[7.0]
  def change
    rename_column :cars, :type, :carType
    rename_column :cars, :min_oil, :minGas
    rename_column :cars, :max_oil, :maxGas
  end
end
