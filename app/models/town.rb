class Town < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence =>true,
  			:length => { :within => 1..50 }
  has_many :users
end
