class AddEventSeriesToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :event_series_id, :integer
    add_index :events, :event_series_id
  end

  def self.down
    remove_column :events, :event_series_id
  end
end
