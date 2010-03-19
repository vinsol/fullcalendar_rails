class RemoveUrlFromEvent < ActiveRecord::Migration
  def self.up
    remove_column :events, :url
  end

  def self.down
    add_column :events, :url, :string
  end
end
