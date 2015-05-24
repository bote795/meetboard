class Status < ActiveRecord::Base
  attr_accessible :name
  has_many :availabilities
  belongs_to :user
  belongs_to :event
end
