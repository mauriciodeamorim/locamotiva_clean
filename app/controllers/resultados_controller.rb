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
    @all_competitions = all_competitions_less_last

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results }
    end
  end

  def all_competitions_less_last
    Prova.find(:all, :conditions => ["id != #{last_competition().id}"], :order => "data DESC")
#    Resultados.find([params:idProva])
  end

  def show
    @all_results = Resultado.find(:all, :conditions => ["idProva = #{params[:id]}"])
#    @prova = Prova.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @all_results }
    end
  end
end

