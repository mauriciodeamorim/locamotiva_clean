class ResultadosController < ApplicationController
  def index
    results_last_competition
  end

  def last_competition
    Prova.find(:last)
  end

  def results_last_competition
    #@last_competition = Prova.find(:last)
    @last_competition = last_competition()
    @results = Resultado.find(:all, :conditions => ["idProva = #{@last_competition.id}"])
    @all_competitions = all_competitions

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results }
    end
  end

  def all_competitions
    Prova.find(:all)
#    Resultados.find([params:idProva])
  end
end

