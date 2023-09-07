class AddDefaultIconToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :icon, 'https://cdn-icons-png.flaticon.com/128/149/149071.png'
  end
end
