class RemoveTable < ActiveRecord::Migration[6.0]
  def change
      drop_table :event_attences
  end
end
