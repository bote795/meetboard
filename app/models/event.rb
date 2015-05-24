class Event < ActiveRecord::Base
  attr_accessible :date, :description, :finished, :name, :private
  belongs_to :user
end
