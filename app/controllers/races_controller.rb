require 'csv'

class RacesController < ApplicationController
  def index
    @races = Race.find(:all, :order => "date DESC")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @races }
    end
  end

  def show
    @race = Race.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @race }
    end
	end
  
  def new
    @race = Race.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @agenda }
    end
  end
  
  def import
    
  end

	def import_csv
    @file = CSV::Reader.parse(params[:dump][:file])
    
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
