class Runner < ActiveRecord::Base
  has_many :results
  
  validates_presence_of :name, :on => :create, :message => "can't be blank"
end
