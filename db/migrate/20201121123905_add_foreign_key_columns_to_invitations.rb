class AddForeignKeyColumnsToInvitations < ActiveRecord::Migration[6.0]
  def change
    add_column :invitations, :event_attendee_id, :integer, null: false, foreign_key: true
    add_column :invitations, :attended_event_id, :integer, null: false, foreign_key: true
  end
end
