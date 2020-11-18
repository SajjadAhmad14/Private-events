class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :name, :user_name
  end
end
