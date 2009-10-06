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
end
