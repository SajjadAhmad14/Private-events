class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :event_attendences, :event_attendee_id, :event_attendence_id
  end
end
