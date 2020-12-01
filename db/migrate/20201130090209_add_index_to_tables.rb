class AddIndexToTables < ActiveRecord::Migration[6.0]
  def change
    add_index :events, :creator_id
    add_index :event_attendences, :attended_event_id
    add_index :event_attendences, :event_attendence_id
  end
end
