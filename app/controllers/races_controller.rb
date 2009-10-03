class RacesController < ApplicationController
  def index
    @races = Race.find(:all)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @races }
    end
  end

  # GET /provas/1
  # GET /provas/1.xml
  def show
    @race = Race.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @race }
    end
	end

  def show_last_race
    @race = Race.find(:last)
    respond_to do |format|
      format.html # show_last.html.erb
      format.xml  { render :xml => @race }
    end
  end
end
