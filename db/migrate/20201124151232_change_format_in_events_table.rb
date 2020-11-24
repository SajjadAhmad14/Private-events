class ChangeFormatInEventsTable < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :date, :string
  end
end
