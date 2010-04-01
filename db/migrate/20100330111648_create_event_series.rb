class CreateEventSeries < ActiveRecord::Migration
  def self.up
    create_table :event_series do |t|
      t.integer :frequency, :default => 1
      t.string :period, :default => 'monthly'
      t.datetime :starttime
      t.datetime :endtime
      t.boolean :all_day, :default => false

      t.timestamps
    end
    
  end

  def self.down
    drop_table :event_series
  end
end
