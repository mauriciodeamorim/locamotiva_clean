class ResultadosController < ApplicationController
  def index
<<<<<<< HEAD:app/controllers/resultados_controller.rb
    render :text => "Primeiro teste com controller!"
  end

  def ano
    @ano = Atleta.find(:all)

#    respond_to do |format|
#      format.html
#    end

    render :text => @ano
=======
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
>>>>>>> working:app/controllers/resultados_controller.rb
  end
end

