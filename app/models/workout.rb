class Workout < ActiveRecord::Base
  belongs_to :type
  attr_accessible :description, :name, :rating
  
  validates :name, :presence => true
  #validates :rating, :inclusion => 0..5 #, :message => "Rating must be 0-5" doesn't work
  
  validates :rating, :inclusion => { :in => 0..5 }
end
