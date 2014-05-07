class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :description, :email, :location, :name
  validates :name, :presence => true,
  			:length => { :maximum => 50}
  validates :location, :presence => true,
  			:length => { :maximum => 50}

 
  has_many :events
  has_many :alerts
  belongs_to :town
end
