class RacesController < ApplicationController
  def index
    @races = Race.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @races }
    end
  end

  def edit
    @race = Race.find(params[:id])

    respond_to do |format|
      format.html # edit.html.erb
      format.xml {render :xml => @race}
    end
  end

  def new
    @race = Race.new
  end

  def show
    @race = Race.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml {render :xml => @race}
    end
  end
end

