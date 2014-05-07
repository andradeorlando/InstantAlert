class Event < ActiveRecord::Base
  attr_accessible :date, :description, :hour, :location, :name, :user_id
  validates :name, :presence =>true,
  			:length => { :within => 1..50 }
  validates :location, :presence =>true,
  			:length => { :within => 1..50 }
  validates :description, :presence =>true,
  			:length => { :within => 1..500 }

  belongs_to :user
end
