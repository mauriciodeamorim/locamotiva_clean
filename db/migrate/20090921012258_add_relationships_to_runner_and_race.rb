class AddRelationshipsToRunnerAndRace < ActiveRecord::Migration
  def self.up
    add_column :results, :id_race, :integer
    add_column :results, :id_runner, :integer
  end

  def self.down
    remove_column :results, :id_runner
    remove_column :results, :id_race
  end
end
