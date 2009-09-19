class Race < ActiveRecord::Base
  has_many :results
  
  validates_presence_of :name
  validates_presence_of :date
  validates_presence_of :distance
  validates_size_of :name, :maximum => 70, :message => "greater than 70 characters."
end

