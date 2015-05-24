class Availability < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :status
  belongs_to :user
  belongs_to :event
end
