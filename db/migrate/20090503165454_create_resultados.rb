class CreateResultados < ActiveRecord::Migration
  def self.up
    create_table :resultados do |t|
      t.string :nome
      t.string :sexo, :limit => 1
      t.string :faixaEtaria, :limit => 10
      t.string :equipe
      t.datetime :tempoLiquido
      t.datetime :tempoOficial
      t.string :classGeral, :limit => 5
      t.string :classSexo, :limit => 5
      t.string :classFaixaEtaria, :limit => 5
      t.datetime :ritmo
      t.string :distancia, :limit => 15
      t.string :noLugarDe
      t.text :notas
      t.timestamps
    end
  end

  def self.down
    drop_table :resultados
  end
end

