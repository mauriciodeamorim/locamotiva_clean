class RacesController < ApplicationController
  def index
    @races = Race.find(:all)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @races }
    end
  end
end
