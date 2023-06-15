class AddTwoColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
    add_column :users, :password, :string
    add_column :users, :password_confirmation, :string
  end
end
