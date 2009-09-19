class ResultsController < ApplicationController
  def index
    results_last_race
  end

  def results_last_race
    @race = Result.verify_last_or_other(params[:id])
    @results_by_race = Result.results_by_race(@race.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results_by_race }
    end
  end

  def show
  #    @results = Resultado.new
  #    @results.prova = Resultado.verify_last_or_other(params[:id])
  #    @results.resultado = Resultado.results_by_race(@results.prova.id)

  #    @race = @results.prova
  #    @results_by_race = @results.resultado
    @race = Result.verify_last_or_other(params[:id])
    @results_by_race = Result.results_by_race(@race.id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @results_by_race }
    end
  end

  def all_races
    @all_races = Result.competitions_except_last(@race.id)
  end
end
