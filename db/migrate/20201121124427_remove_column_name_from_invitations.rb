class RemoveColumnNameFromInvitations < ActiveRecord::Migration[6.0]
  def change
    remove_column :invitations, :event_creator_id, :integer
    remove_column :invitations, :created_event_id, :integer
  end
end
