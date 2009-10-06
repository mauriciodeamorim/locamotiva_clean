class ResultsController < ApplicationController
  def index
    @race = Result.verify_last_or_other(params[:id])
    @results_by_race = Result.results_by_race(@race.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results_by_race }
    end
  end

  def show
    @race = Result.verify_last_or_other(params[:id])
    @results_by_race = Result.results_by_race(@race.id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @results_by_race }
    end
  end
end
