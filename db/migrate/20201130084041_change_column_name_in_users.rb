class ChangeColumnNameInUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :name, :string
    remove_column :users, :email, :string
    add_column :users, :user_name, :string
  end
end
