class RemoveDateColumnFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :date, :string
  end
end
