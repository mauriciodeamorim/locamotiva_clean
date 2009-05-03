class CreateAtletas < ActiveRecord::Migration
  def self.up
    create_table :atletas do |t|
      t.string :nome
      t.datetime :data_nasc
      t.string :cpf
      t.string :celular
      t.text :notas

      t.timestamps
    end
  end

  def self.down
    drop_table :atletas
  end
end
