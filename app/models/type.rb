class Type < ActiveRecord::Base
  attr_accessible :details, :name
  has_many :workouts
  validates :name, :presence => true
end
