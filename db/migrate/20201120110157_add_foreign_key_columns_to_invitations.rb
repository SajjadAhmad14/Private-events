class AddForeignKeyColumnsToInvitations < ActiveRecord::Migration[6.0]
  def change
    add_column :invitations, :event_creator_id, :integer, null: false, foreign_key: true
    add_column :invitations, :created_event_id, :integer, null: false, foreign_key: true
  end
end
