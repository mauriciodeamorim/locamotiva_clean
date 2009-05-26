class ResultadosController < ApplicationController
  def index
    resultadosPorProva
  end

  def resultadosPorProva
    @resultado = Resultado.new

    @resultado.prova = Prova.find(:last)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resultado }
    end
#    Resultados.find([params:idProva])
  end
end

