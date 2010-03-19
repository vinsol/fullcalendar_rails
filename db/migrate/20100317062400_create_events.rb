class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title, :url
      t.datetime :starttime, :endtime
      t.boolean :all_day, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
