# == Schema Information
# Schema version: 20100330111833
#
# Table name: events
#
#  id              :integer(4)      not null, primary key
#  title           :string(255)
#  starttime       :datetime
#  endtime         :datetime
#  all_day         :boolean(1)
#  created_at      :datetime
#  updated_at      :datetime
#  description     :text
#  event_series_id :integer(4)
#

class Event < ActiveRecord::Base
  
  validates_presence_of :title, :description

  belongs_to :event_series
  
  
  def validate
    if (starttime >= endtime) and !all_day
      errors.add_to_base("Start Time must be less than End Time")
    end
  end
  
end
