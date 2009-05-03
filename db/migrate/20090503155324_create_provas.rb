class CreateProvas < ActiveRecord::Migration
  def self.up
    create_table :provas do |t|
      t.string :nome
      t.string :etapa
      t.datetime :data
      t.string :local
      t.string :url
      t.string :distancia

      t.timestamps
    end
  end

  def self.down
    drop_table :provas
  end
end
