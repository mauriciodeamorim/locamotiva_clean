class Result < ActiveRecord::Base
  belongs_to :runner
  belongs_to :race
  
  def self.get_results_by_race(id)
    @results = Result.find(:all, :conditions => ["id_race = #{id}"]) if id
    @results << Race.find(id)
  end

  def self.results_by_race(id)
    #verify_last_or_other(id)
    results_by_race = Result.find(:all, :conditions => ["id_race = #{id}"], :order => "start_number")

    results_by_race.each  do |item|
      item.runner  = Runner.find(item.id_runner)
    end
  end

  def self.verify_last_or_other(id)
      if id == nil
        Race.find(:last)
      else
        Race.find(id)
      end
  end

#not used
  def self.all_races_less_last
    @all_race_without_last = Race.find(:all, :conditions => ["id != #{last_race().id}"], :order => "start_number")
  end

  def self.competitions_except_last(id)
    Race.find(:all, :conditions => ["id != #{id}"], :order => "start_number")
  end
  
  def all_races
    @all_races = Result.competitions_except_last(@race.id)
  end
end
