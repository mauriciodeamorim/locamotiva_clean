class Atleta < ActiveRecord::Base
  has_many :resultados
  validates_presence_of :nome, :on => :create, :message => "can't be blank"
end

