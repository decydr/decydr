class Event < ActiveRecord::Base
  attr_accessible :begin_time, :display_name, :end_time, :name, :web_link, :description
  scope :today, lambda { where("begin_time BETWEEN '#{DateTime.now.beginning_of_day}' AND '#{DateTime.now.end_of_day}' OR
                                end_time BETWEEN '#{DateTime.now.beginning_of_day}' AND '#{DateTime.now.end_of_day}'") }
end
