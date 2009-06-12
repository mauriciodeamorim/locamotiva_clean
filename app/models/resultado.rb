class Resultado < ActiveRecord::Base
  belongs_to :atleta
  belongs_to :prova

def tras()
  "mauricio."
end

#  def initialize
#    @all_competition_without_last
#  end

#  def last_competition
#    Prova.find(:last)
#  end

#  def results_last_competition
#    #@last_competition = Prova.find(:last)
#      if params[:id] == nil
#        @last_competition = last_competition()
##        @last_competition = Prova.find(2)
#      else
#        @last_competition = Prova.find(params[:id])
#      end

#    @results = Resultado.find(:all, :conditions => ["idProva = #{@last_competition.id}"])
#    @all_competitions = all_competitions_less_last

#    @results.each  do |item|
#      item.atleta  = Atleta.find(item.idAtleta)
#    end

#    respond_to do |format|
#      format.html # index.html.erb
#      format.xml  { render :xml => @results }
#    end
#  end

  def all_competitions_less_last
    @all_competition_without_last = Prova.find(:all, :conditions => ["id != #{last_competition().id}"], :order => "data DESC")
#    Resultados.find([params:idProva])
  end

#  def show
#    #@prova = Prova.find(params[:id])
#    @results_per_competition = Resultado.find(:all, :conditions => ["idProva = #{params[:id]}"])
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @results_per_competition }
#    end
#  end

#  def show_nnn
#    @all_results = Resultado.find(:all, :conditions => ["idProva = #{params[:id]}"])
##    @prova = Prova.find(params[:id])

#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @all_results }
#    end
#  end
end

