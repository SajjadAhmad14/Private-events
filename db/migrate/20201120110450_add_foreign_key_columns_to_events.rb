class AddForeignKeyColumnsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :creator_id, :integer, null: false, foreign_key: true

  end
end
