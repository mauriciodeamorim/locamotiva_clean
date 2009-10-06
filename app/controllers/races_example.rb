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
      format.xml { render :xml => @race }
    end
  end

  def new
    @race = Race.new
  end

  def show
    @race = Race.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @race }
    end
  end

  def update
    @race = Race.find(params[:id])

    respond_to  do |format|
      if @race.update_attributes(params[:race])
        flash[:notice] = "Prova cadastrada com sucesso."
        format.html { redirect_to(@race) }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        forma.xml { render :xml => @race.errors, :status => :unprocessable_entity }
      end
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

