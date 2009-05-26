class Resultado < ActiveRecord::Base
  belongs_to :atleta
  belongs_to :prova
end

