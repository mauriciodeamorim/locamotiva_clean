class ResultadosController < ApplicationController
  def index
  results_last_competition
  end

  def last_competition
    @resultado = Resultado.new

    @resultado.prova = Prova.find(:last)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resultado }
    end
#    Resultados.find([params:idProva])
  end

  def results_last_competition
    @results = Resultado.new
    @last_competition = Prova.find(:last)
    @results.prova = Prova.find(:last)

    id_prova = @results.prova.id

    @results = Resultado.find(:all, :conditions => ["idProva = #{id_prova}"])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results }
    end
  end
end

