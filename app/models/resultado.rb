class Resultado < ActiveRecord::Base
  belongs_to :atleta
  belongs_to :prova

  def self.verify_last_or_other(id)
      if id == nil
        Prova.find(:last)
      else
        Prova.find(id)
      end
  end

  def self.results_by_race(id)
    results_by_race = Resultado.find(:all, :conditions => ["idProva = #{id}"])

    results_by_race.each  do |item|
      item.atleta  = Atleta.find(item.idAtleta)
    end
  end

#not use
  def self.all_races_less_last
    @all_race_without_last = Prova.find(:all, :conditions => ["id != #{last_race().id}"], :order => "data DESC")
  end

  def self.competitions_except_last(id)
    Prova.find(:all, :conditions => ["id != #{id}"], :order => "data DESC")
  end
end

