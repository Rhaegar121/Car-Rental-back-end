class RemoveDeviseColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_columns :users, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  end
end
