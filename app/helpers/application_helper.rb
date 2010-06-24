# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def list_of_results(id)
    @results = Resultado.find(:all, :conditions => ["idProva = #{id}"])
#    @results = Resultado.find(:all, :conditions => ["idProva = #{@last_competition.id}"])

    html ="<ul>"

    @results.each do |item|
      html << "<li>" + item.nome + link_to(item.id, :controller => "resultados/#{item.nome}") + "</li>"
    end
#link_to(item.id, :controller => resultados)
    html << "</ul>"
    html
  end
end

