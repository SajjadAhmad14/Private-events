class RemoveForeignKeyColumnFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :event_attendences, :event_attendee_id, :integer
    add_column :event_attendences, :event_attendence_id, :integer, null: false, foreign_key: true
  end
end
