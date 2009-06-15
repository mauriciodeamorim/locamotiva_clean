class ResultadosController < ApplicationController
  def index
    results_last_race
  end

  def results_last_race
    @race = Resultado.verify_last_or_other(params[:id])
    @results_by_race = Resultado.find(:all, :conditions => ["idProva = #{@race.id}"])

    @all_races = Resultado.competitions_except_last(@race.id)

    @results_by_race.each  do |item|
      item.atleta  = Atleta.find(item.idAtleta)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results }
    end
  end

  def show
    @results_per_race = Resultado.find(:all, :conditions => ["idProva = #{params[:id]}"])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @results_per_race }
    end
  end
end

