require 'csv'

class Race < ActiveRecord::Base
  has_many :results
  
  validates_presence_of :name
  validates_presence_of :date
  validates_presence_of :distance
  validates_size_of :name, :maximum => 70, :message => "greater than 70 characters."
  
	def csv_import(file = "default_file.csv")
    @file=CSV::Reader.parse(File.open("#{RAILS_ROOT}/#{file}", 'csv'))
    
    increment = 1
    @file.each do |row|
      race = Race.new
      race.name = row[0]
      race.stage = row[1]
      race.date = row[2]
      race.place = row[3]
      race.distance = row[4]
      race.url = row[5]
      
      if race.save
        increment += 1
      end
    end
  end

end

