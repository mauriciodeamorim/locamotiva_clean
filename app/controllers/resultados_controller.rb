class ResultadosController < ApplicationController
  def index
    render :text => "Primeiro teste com controller!"
  end

  def ano
    @ano = Atleta.find(:all)

#    respond_to do |format|
#      format.html
#    end

    render :text => @ano
  end
end

