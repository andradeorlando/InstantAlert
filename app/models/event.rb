class Event < ActiveRecord::Base
  attr_accessible :date, :description, :hour, :location, :name, :user_id
  belongs_to :user
end
