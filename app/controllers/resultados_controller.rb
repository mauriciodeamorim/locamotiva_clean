class ResultadosController < ApplicationController
  def index
    results_last_race
  end

  def results_last_race
    @race = Resultado.verify_last_or_other(params[:id])
    @results_by_race = Resultado.results_by_race(@race.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results }
    end
  end

  def show
    @race = Resultado.verify_last_or_other(params[:id])
    @results_by_race = Resultado.results_by_race(@race.id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @results_by_race }
    end
  end

  def all_races
    @all_races = Resultado.competitions_except_last(@race.id)
  end
end

