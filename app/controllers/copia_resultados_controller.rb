class ResultadosController < ApplicationController
  def index
    results_last_competition
  end

  def results_last_competition
      if params[:id] == nil
        @last_competition = Prova.find(:last)
      else
        @last_competition = Prova.find(params[:id])
      end

    @results = Resultado.find(:all, :conditions => ["idProva = #{@last_competition.id}"])
    @all_competitions = Resultado.competitions_less_last(@last_competition.id)
    #Resultado.all_competitions_less_last()
    #@all_competition_without_last

    @results.each  do |item|
      item.atleta  = Atleta.find(item.idAtleta)
    end

    @meu_nome = Resultado.new.tras()

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results }
    end
  end

  def show
    #@prova = Prova.find(params[:id])
    @results_per_competition = Resultado.find(:all, :conditions => ["idProva = #{params[:id]}"])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @results_per_competition }
    end
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

