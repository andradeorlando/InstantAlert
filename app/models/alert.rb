class Alert < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :presence =>true,
		      :length => { :within => 1..500 }
  belongs_to :user
end
