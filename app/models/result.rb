class Result < ActiveRecord::Base
    belongs_to :runner
    belongs_to :race

    def self.results_by_race(id)
      #verify_last_or_other(id)
      results_by_race = Result.find(:all, :conditions => ["id_race = #{id}"])

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
      @all_race_without_last = Race.find(:all, :conditions => ["id != #{last_race().id}"], :order => "date DESC")
    end

    def self.competitions_except_last(id)
      Race.find(:all, :conditions => ["id != #{id}"], :order => "date DESC")
    end

end
