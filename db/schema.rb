# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090919063757) do

  create_table "atletas", :force => true do |t|
    t.string   "nome"
    t.datetime "data_nasc"
    t.string   "cpf"
    t.string   "celular"
    t.text     "notas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provas", :force => true do |t|
    t.string   "nome"
    t.string   "etapa"
    t.datetime "data"
    t.string   "local"
    t.string   "url"
    t.string   "distancia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.string   "stage"
    t.datetime "date"
    t.string   "place"
    t.string   "distance"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resultados", :force => true do |t|
    t.string   "nome"
    t.string   "sexo",             :limit => 1
    t.string   "faixaEtaria",      :limit => 10
    t.string   "equipe"
    t.datetime "tempoLiquido"
    t.datetime "tempoOficial"
    t.string   "classGeral",       :limit => 5
    t.string   "classSexo",        :limit => 5
    t.string   "classFaixaEtaria", :limit => 5
    t.datetime "ritmo"
    t.string   "distancia",        :limit => 15
    t.string   "noLugarDe"
    t.text     "notas"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "idAtleta"
    t.integer  "idProva"
  end

  create_table "results", :force => true do |t|
    t.string   "start_number"
    t.string   "category"
    t.string   "team"
    t.date     "liquid_time"
    t.date     "official_time"
    t.integer  "class_general"
    t.integer  "class_sex"
    t.integer  "class_category"
    t.date     "pace"
    t.string   "substitute"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "runners", :force => true do |t|
    t.string   "name"
    t.string   "sex"
    t.date     "birthday"
    t.string   "cpf"
    t.string   "phone"
    t.string   "cel"
    t.string   "nick"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
