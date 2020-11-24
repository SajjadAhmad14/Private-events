class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :created_on, :date
  end
end
