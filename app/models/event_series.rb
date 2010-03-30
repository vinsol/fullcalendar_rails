# == Schema Information
# Schema version: 20100330111833
#
# Table name: event_series
#
#  id         :integer(4)      not null, primary key
#  frequency  :integer(4)      default(1)
#  period     :string(255)     default("months")
#  starttime  :datetime
#  endtime    :datetime
#  all_day    :boolean(1)
#  created_at :datetime
#  updated_at :datetime
#

class EventSeries < ActiveRecord::Base
  
  validates_presence_of :frequency, :period, :starttime, :endtime
  
  has_many :events, :dependent => :destroy
end
