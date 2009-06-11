class AddIdProvaAndAtleta < ActiveRecord::Migration
  def self.up
    add_column :resultados, :idAtleta, :integer, :limit => 11
    add_column :resultados, :idProva, :integer, :limit => 11
  end

  def self.down
    remove_column :resultados, :idAtleta
    remove_column :resultados, :idProva
  end
end

