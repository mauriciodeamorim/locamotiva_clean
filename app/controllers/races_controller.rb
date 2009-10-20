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

#  def import
#    csv_import
#  end	
   
	def import
    @file=CSV::Reader.parse(params[:dump][:file])
#    @file=CSV::Reader.parse(File.open("#{RAILS_ROOT}/#{file}", 'csv'))
    n = 0
    @file.each do |row|
      race = Race.new
      race.name = row[0]
      race.stage = row[1]
      race.date = row[2]
      race.place = row[3]
      race.distance = row[4]
      race.url = row[5]
      
      if race.save
        n = n+1
        GC.start if n%50==0
      end
      flash.now[:message] = "Arquivo importado com sucesso. #{n} adicionados."
    end
  end

end
